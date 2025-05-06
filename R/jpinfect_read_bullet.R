#' Import one week or more weeks of bullet reports
#'
#' This function imports and processes surveillance data files downloaded from the Japan Institute for Health Security (JIHS).
#' The processed data for the specified year and weeks is combined into a single data frame, optionally saved to a file.
#'
#' @param year An integer specifying the year of the data files to process. If NULL, all years available in the directory are processed.
#' @param week A numeric vector specifying the weeks to process (default is 1:53).
#' @param directory A string specifying the directory containing the JIHS data files (default is `"raw_data"`).
#' @param language A character string specifying the language of the data ('en' for English, 'jp' for Japanese). Default is 'en'.
#' @param output_file A string specifying the file name to save the combined data. If NULL, the combined data is not saved (default is NULL).
#'
#' @return A data frame containing the combined and processed JIHS surveillance data.
#'         If `output_file` is specified, the data is also saved to a CSV file in the specified directory.
#'
#' @details
#' - The function reads all files matching the specified `year` and `language` in the given `directory`.
#' - Files are filtered based on their naming patterns, which include `_zensu_en.csv` for English and `_zensu_jp.csv` for Japanese.
#' - Each file is read and processed, including renaming columns, adding `year` and `week` information, and rearranging columns.
#' - If no files matching the criteria are found, the function raises an error.
#' - Processed data for all specified files is combined into a single data frame.
#'
#' @examples
#' \dontrun{
#' # Process data for 2025, weeks 1 to 10, in English, and save the output
#' combined_data <- jpinfect_read_bullet(year = 2025, week = 1:10,
#'                                          directory = "raw_data", language = "en",
#'                                          output_file = "processed_2025.csv")
#'
#' # Process Japanese data for all available years in the directory
#' combined_data <- jpinfect_read_bullet(directory = "raw_data", language = "jp")
#'
#' # Process data for 2023, weeks 5 to 15, without saving the output
#' combined_data <- jpinfect_read_bullet(year = 2023, week = 5:15,
#'                                          directory = "raw_data", language = "en")
#' }
#'
#' @importFrom stringr str_extract str_pad
#' @importFrom stringi stri_trans_general
#' @importFrom readr read_csv locale write_csv
#' @importFrom dplyr select filter mutate contains across
#' @importFrom magrittr %>%
#' @importFrom tidyselect last_col
#' @importFrom stats na.omit
#' @importFrom ISOweek ISOweek2date
#'
#' @export
jpinfect_read_bullet <- function(year = NULL, week = 1:53, directory = "raw_data", language = "en", output_file = NULL) {
  if (language == "en") {
    file_pattern <- "_zensu_en.csv"
    skip <- 3
  } else if (language == "jp") {
    file_pattern <- "_zensu_jp.csv"
    skip <- 2
  } else {
    stop("Invalid language specified. Use 'en' for English or 'jp'.")
  }

  # List all relevant files
  if (is.null(year)) {
    local_files <- list.files(directory, pattern = file_pattern, full.names = TRUE)
  } else {
    pattern <- paste0("^", year, ".*", file_pattern, "$")
    local_files <- list.files(directory, pattern = pattern, full.names = TRUE)
  }

  if (length(local_files) == 0) {
    stop("No files were found in the folder.")
  }

  # Filter files based on `week`
  week_pattern <- paste0("_", str_pad(week, 2, pad = "0"), "_")
  local_files <- local_files[str_detect(local_files, paste(week_pattern, collapse = "|"))]

  if (length(local_files) == 0) {
    stop("No files matching the specified weeks were found.")
  }

  # Show files to process
  message("Files to process:")
  print(local_files)

  # Initialise an empty list to store processed data
  combined_data_list <- list()

  for (i in seq_along(local_files)) {
    # Read the CSV file
    data <- read_csv(local_files[i], locale = locale(encoding = "CP932"), skip = skip) %>% suppressMessages()

    # Character to integer
    data <- data %>%
      mutate(across(2:ncol(data), ~ {
        clean_values <- stri_trans_general(., "Fullwidth-Halfwidth")
        clean_values <- str_replace_all(clean_values, "[^0-9]", "")  # Remove all non-numeric characters
        suppressWarnings(as.integer(clean_values))
      }))

    # Column renaming
    namecol <- names(data)[seq(2, ncol(data), 2)] %>% rep(each = 2) %>% data.frame(subname = .) %>% na.omit()
    namecol$condition <- rep(c("_(weekly)", "_(cumulative)"))
    namecol$name <- str_c(namecol$subname, namecol$condition)

    names(data)[1] <- "prefecture"
    names(data)[-1] <- namecol$name

    # Remove first row and rename prefecture
    data <- data[-1, ]
    data$prefecture <- c("Total", prefecture_en)

    # Add year and week information
    year <- local_files[i] %>% basename() %>% str_extract("\\d{4}") %>% as.integer()
    week <- local_files[i] %>% basename() %>% str_extract("_\\d{2}_") %>% str_replace_all("_", "") %>% as.integer()
    date <- paste0(year, "-W", sprintf("%02d", week), "-7") %>% ISOweek2date()
    data <- data %>% mutate(year = year, week = week, date = date)

    # Select and arrange columns
    data <- data %>% select(prefecture, year, week, date, contains("_"))

    # Column name cleaning
    colnames(data) <- .col_rename_bullet(data)

    # Append processed data to the list
    combined_data_list[[i]] <- data
  }

  # Combine all data frames into one
  combined_data <- bind_rows(combined_data_list) %>% suppressMessages()

  # Output to file (if specified)
  if (!is.null(output_file)) {
    write_csv(combined_data, file.path(directory, output_file))
  }

  # Return combined data
  return(combined_data)
}

#' Clean and Format Column Names for bullet reports
#'
#' This helper function cleans and formats column names of a dataset to ensure consistent and readable formatting.
#'
#' @param dataset A data frame or tibble whose column names need to be cleaned.
#' @param rep_each An integer specifying the repetition count for column names (default is 1).
#'
#' @return A character vector containing cleaned and formatted column names.
#'
#' @details
#' The function removes unnecessary characters, trims whitespace, replaces certain patterns for consistency, and optionally repeats the column names.
#'
#' @examples
#' \dontrun{
#' # Clean column names for a dataset
#' col_rename_bullet <- .col_rename_bullet(dataset = my_data, rep_each = 3)
#' }
#'
#' @importFrom stringr str_replace str_replace_all str_trim
#'
#' @keywords internal
.col_rename_bullet <- function(dataset, rep_each = 1) {
  colnames(dataset) %>%
    str_replace("_", " ") %>%
    str_replace_all("([a-zA-Z])\\(", "\\1 (") %>%
    str_replace("^\\.\\.\\.[0-9]+$", NA_character_) %>%
    str_replace("\uff29", "I") %>%
    str_replace("\uff08", "(") %>%
    str_replace("^Pandemic influenza \\(A/H1N1\\)$", "(Pandemic influenza (A/H1N1))") %>%
    .[!is.na(.)] %>%
    str_replace_all("([a-zA-Z])\\(", "\\1 (") %>%
    str_trim(side = "left") %>%
    rep(each = rep_each)
}
