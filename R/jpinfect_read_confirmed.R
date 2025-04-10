#' Read Confirmed Infection Data from File or Directory
#'
#' This function processes infection data either from a single file or from multiple files within a directory.
#' The function is capable of handling data by \code{"sex"} or \code{"place"} types, and processes data
#' accordingly based on file patterns.
#'
#' @param path A character string specifying the path to a single file or directory containing multiple files.
#' @param type A character string specifying the type of data to import. Must be either \code{"sex"} or \code{"place"}.
#' @param ... Additional arguments passed to internal functions for further customization.
#'
#' @return A data frame containing processed infection data for all rows and columns in the files.
#'
#' @details
#' The function detects whether the \code{path} is a single file or a directory. If it is a single file,
#' it processes the data using \code{.jpinfect_read_excel}. If it is a directory, it processes multiple files
#' using \code{.jpinfect_read_excels}.
#'
#' Supported file patterns:
#' \describe{
#'   \item{\code{"sex"}}{Files with names containing \code{"11.xls"} or \code{"Syu_01_1.xls"}.}
#'   \item{\code{"place"}}{Files with names containing \code{"Syu_02_1.xls"}.}
#' }
#'
#' @examples
#' \dontrun{
#' # Process a single file
#' data <- jpinfect_read_confirmed("path/to/file.xls", type = "sex")
#'
#' # Process all files in a directory
#' data <- jpinfect_read_confirmed("path/to/directory", type = "place")
#' }
#'
#' @importFrom stringr str_extract str_detect
#' @importFrom dplyr bind_rows relocate mutate across
#' @importFrom future plan multisession sequential
#' @importFrom future.apply future_lapply
#' @importFrom readxl read_excel
#' @export
jpinfect_read_confirmed <- function(path, type = NULL, ...) {
  # Single file: Check if it's a file but not a directory
  if (file.exists(path) && !dir.exists(path)) {
    return(.jpinfect_read_excel(path, ...))
  }

  # Directory: Validate 'type'
  if (dir.exists(path)) {
    if (is.null(type)) {
      stop("The 'type' argument is required when processing a directory and must be specified as either 'sex' or 'place'.")
    }
    if (!type %in% c("sex", "place")) {
      stop("Invalid 'type' argument: must be either 'sex' or 'place'.")
    }
    return(.jpinfect_read_excels(type = type, directory = path, ...))
  }

  # Invalid path
  stop("Invalid path: must be either a file or directory")
}


#' Process a Single Excel File
#'
#' This internal function processes a single Excel file containing infection data. The function dynamically
#' adapts to the structure of the file based on its type and year.
#'
#' @param file_path A character string specifying the path to the Excel file.
#' @param year An optional integer specifying the year of the data. If NULL, the year is inferred from the file name.
#' @param sheet_range A vector of integers specifying the sheet range to process. If NULL, it is inferred based on the year.
#'
#' @return A data frame containing processed infection data from the specified file.
#'
#' @details
#' The function reads data from the specified sheet range using \code{read_excel}. It handles specific data formatting
#' for \code{"sex"} and \code{"place"} datasets based on file patterns and column structures.
#'
#' Supported file patterns:
#' \describe{
#'   \item{\code{"sex"}}{Files with names containing \code{"11.xls"} or \code{"01_1.xls"}.}
#'   \item{\code{"place"}}{Files with names containing \code{"02_1.xls"}.}
#' }
#'
#' @examples
#' \dontrun{
#' # Process a single file with inferred year
#' data <- .jpinfect_read_excel("path/to/file.xls")
#'
#' # Specify the year explicitly
#' data <- .jpinfect_read_excel("path/to/file.xls", year = 2021)
#' }
#'
#' @importFrom stringr str_extract str_detect str_replace
#' @importFrom readxl read_excel
#' @importFrom dplyr bind_cols bind_rows select_if relocate mutate across
#' @importFrom future plan multisession sequential
#' @importFrom future.apply future_lapply
#'
#' @keywords internal
.jpinfect_read_excel <- function(file_path, year = NULL, sheet_range = NULL) {
  if (missing(file_path)) {
    stop("The 'file_path' argument is missing. Please specify a valid file path.")
  }
  if (is.null(file_path) || file_path == "") {
    stop("The 'file_path' is empty. Please specify a valid file path.")
  }

  cat("Processing...")

  # year check
  if (is.null(year)) {
    year <- str_extract(file_path, "\\d{4}") %>% as.integer()
    if (is.na(year)) {
      stop(paste("Cannot detect year from the specified file:", file_path,
                 "\nPlease ensure the filename contains a valid 4-digit year or specify 'year' explicitly."))
    }
  }

  # over write when sheet_range is not specified
  if (is.null(sheet_range)) {
    if (year == 1999) {
      sheet_range <- 2:40
    } else if (year %in% c(2004, 2009, 2015)) {
      sheet_range <- 2:54
    } else {
      sheet_range <- 2:53  # default range
    }
  }

  # base file name for importing data
  base_name <- basename(file_path)

  # Initalise multi-core
  plan(multisession)

  # Multicore handling for each excel
  if (str_detect(base_name, "11\\.xls|01_1\\.xls")) {
    # Sex dataset
    data_list <- future_lapply(sheet_range, function(sheet) {
      data <- read_excel(file_path, range = "B6:JF54", sheet = sheet) %>% suppressMessages
      data <- data %>% select_if(function(x) !all(is.na(x))) # Remove missing
      data$year <- year
      data$week <- if (year == 1999) sheet + 12 else sheet - 1

      cat(".") # progress report

      return(data)
    })
  } else if (str_detect(base_name, "02_1\\.xls")) {
    # Place dataset
    data_list <- future_lapply(sheet_range, function(sheet) {
      if (year < 2007) {
        data <- read_excel(file_path, range = "B6:HZ54", sheet = sheet) %>% suppressMessages
      } else if (year < 2008) {
        data1 <- read_excel(file_path, range = "B6:IT54", sheet = sheet) %>% suppressMessages
        data2 <- read_excel(file_path, range = "C57:AH105", sheet = sheet) %>% suppressMessages
        colnames(data2) <- colnames(data2) %>% str_replace("\u56fd\u5916\\(\\)", "\u56fd\u5916(Others)") # Japanese replaced Kokugai Kokugai # Fix 2007 column name errors in sheet 3:53
        data <- bind_cols(data1, data2) %>% suppressMessages
      } else if (year < 2015) {
        data1 <- read_excel(file_path, range = "B6:JB54", sheet = sheet) %>% suppressMessages
        data2 <- read_excel(file_path, range = "C57:CP105", sheet = sheet) %>% suppressMessages
        data <- bind_cols(data1, data2) %>% suppressMessages
      } else if (year < 2017) {
        data1 <- read_excel(file_path, range = "B6:JB54", sheet = sheet) %>% suppressMessages
        data2 <- read_excel(file_path, range = "C57:CL105", sheet = sheet) %>% suppressMessages
        data <- bind_cols(data1, data2) %>% suppressMessages
      } else if (year < 2018) {
        data1 <- read_excel(file_path, range = "B6:JB54", sheet = sheet) %>% suppressMessages
        data2 <- read_excel(file_path, range = "C57:CH105", sheet = sheet) %>% suppressMessages
        data <- bind_cols(data1, data2) %>% suppressMessages
      } else if (year < 2019) {
        data1 <- read_excel(file_path, range = "B6:JB54", sheet = sheet) %>% suppressMessages
        data2 <- read_excel(file_path, range = "C57:CP105", sheet = sheet) %>% suppressMessages
        data <- bind_cols(data1, data2) %>% suppressMessages
      } else {
        data <- read_excel(file_path, range = "B6:MP54", sheet = sheet) %>% suppressMessages
      }
      data <- data %>% select_if(function(x) !all(is.na(x))) # Remove missing
      data$year <- year
      data$week <- if (year == 1999) sheet + 12 else sheet - 1

      cat(".") # progress report

      return(data)
    })
  } else {
    stop(paste("Unsupported file format:", base_name,
               "\nFile should contain '11.xls', '01_1.xls', or '02_1.xls' in its name."))
  }

  # Finish multi-core settings
  plan(sequential)

  combined_data <- bind_rows(data_list) %>% suppressMessages
  cat(".") # progress report

  # Rename rows and columns
  row_name <- c("Total", prefecture_en) %>% rep(nrow(combined_data) / 48)
  cat(".") # progress report

  combined_data[1] <- row_name
  names(combined_data)[1] <- "prefecture"

  # Rename cols using `col_rename`
  if (str_detect(base_name, "11\\.xls|01_1\\.xls")) {
    col_1_name <- read_excel(file_path, range = "B5:JF5", sheet = 1) %>% suppressMessages %>%
      .col_rename(rep_each = 3)
  } else if (str_detect(base_name, "02_1\\.xls")) {
    if (year < 2007) {
      col_1_name <- read_excel(file_path, range = "B5:HZ5", sheet = 1) %>% suppressMessages %>%
        .col_rename(rep_each = 4)
    } else if (year < 2019) {
      col_0_name <- bind_cols(
        read_excel(file_path, range = "B5:JB5", sheet = 1) %>% suppressMessages,
        read_excel(file_path, range = "C56:CP56", sheet = 1) %>% suppressMessages
      ) %>% suppressMessages
      col_1_name <- col_0_name %>%
        .col_rename(rep_each = 4)
    } else {
      col_1_name <- read_excel(file_path, range = "B5:MP5", sheet = 1) %>% suppressMessages %>%
        .col_rename(rep_each = 4)
    }
  }
  cat(".") # progress report

  col_2_name <- names(combined_data) %>%
    str_extract("\\([A-Za-z\\s\\.]+\\)|prefecture|year|week") %>%
    str_replace("\\s*No\\.", "")
  cat(".") # progress report

  col_3_name <- str_c(col_1_name, " ", col_2_name[2:(length(col_2_name)-2)])
  cat(".") # progress report

  col_name <- c(col_2_name[1], col_3_name, col_2_name[(length(col_2_name)-1):length(col_2_name)])
  colnames(combined_data) <- col_name
  cat(".") # progress report

  # combined_data <- combined_data %>% relocate(year, .after = last_col()) %>% relocate(week, .after = last_col())
  combined_data <- combined_data %>% relocate(year, .after = prefecture) %>% relocate(week, .after = year)

  cat(".") # progress report

  combined_data <- combined_data %>% mutate(across(2:ncol(.), as.integer))

  cat("Completed!\n")

  Sys.sleep(0.731)

  return(combined_data)

}


#' Process Multiple Excel Files
#'
#' This internal function processes multiple Excel files within a directory. The files are processed based on the
#' specified type (\code{"sex"} or \code{"place"}).
#'
#' @param type A character string specifying the type of data to import. Must be either \code{"sex"} or \code{"place"}.
#' @param directory A character string specifying the directory containing Excel files to process.
#'
#' @return A data frame containing combined infection data from all processed files.
#'
#' @details
#' The function identifies files matching the specified type within the directory. It processes each file using
#' \code{.jpinfect_read_excel} and combines the results.
#'
#' Supported file patterns:
#' \describe{
#'   \item{\code{"sex"}}{Files with names containing \code{"11.xls"} or \code{"Syu_01_1.xls"}.}
#'   \item{\code{"place"}}{Files with names containing \code{"Syu_02_1.xls"}.}
#' }
#'
#' @examples
#' \dontrun{
#' # Process all files for "sex" data
#' data <- .jpinfect_read_excels(type = "sex", directory = "path/to/directory")
#'
#' # Process all files for "place" data
#' data <- .jpinfect_read_excels(type = "place", directory = "path/to/directory")
#' }
#'
#' @importFrom dplyr bind_rows relocate mutate
#' @importFrom stringr str_detect
#' @keywords internal
.jpinfect_read_excels <- function(type, directory = "raw_data") {
  # type errors
  if(!type %in% c("sex","place")) {
    stop("type must be either \"sex\" or \"place\"")
  }


  if (type == "sex") {
    local_files <- c(list.files(directory, full.names = TRUE, pattern = "11.xls"),
                     list.files(directory, full.names = TRUE, pattern = "Syu_01_1.xls")
    )
  } else if (type == "place") {
    local_files <- list.files(directory, full.names = TRUE, pattern = "Syu_02_1.xls")
  }

  if (length(local_files) == 0) {
    stop(paste0("Cannot found dataset in \"", directory, "\""))
  }

  cat("Processing", length(local_files), "files:\n")

  print(local_files)

  cat("\nThis will take some time. Please enjoy a cup of Japanese tea!\n\n")

  # initialise the data frame for loop
  all_data <- list()

  for(i in seq_along(local_files)) {
    cat("Starting:", local_files[i], "\n")
    temp_data <- .jpinfect_read_excel(file_path = local_files[i])
    all_data[[i]] <- temp_data
    cat("\n")
  }

  combined_data <- bind_rows(all_data)
  combined_data <- combined_data %>% relocate(year, .after = last_col()) %>% relocate(week, .after = last_col())


  cat("Data processing complete!\n")


  return(combined_data)

}


#' Clean and Format Column Names
#'
#' This helper function cleans and formats column names of a dataset for consistent and readable formatting.
#'
#' @param dataset A data frame or tibble whose column names need to be cleaned.
#' @param rep_each An integer specifying the repetition count for column names. Defaults to \code{1}.
#'
#' @return A character vector containing cleaned and formatted column names.
#'
#' @details
#' The function removes unnecessary characters, trims whitespace, replaces certain patterns for consistency, and optionally
#' repeats the column names based on the \code{rep_each} parameter.
#'
#' @examples
#' \dontrun{
#' # Clean column names for a dataset
#' clean_names <- .col_rename(dataset = my_data, rep_each = 3)
#' }
#'
#' @importFrom stringr str_replace str_replace_all str_trim
#' @keywords internal
.col_rename <- function(dataset, rep_each = 1) {
  colnames(dataset) %>%
    str_replace("^.*[\r\n]+", "") %>%
    str_replace("^.*[\r\n]+", "") %>%
    str_replace("^\\.\\.\\.[0-9]+$", NA_character_) %>%
    str_replace("\uff29", "I") %>%
    str_replace("\uff08", "(") %>%
    str_replace("^Pandemic influenza \\(A/H1N1\\)$", "(Pandemic influenza (A/H1N1))") %>%
    .[!is.na(.)] %>%
    str_replace("^\\(", "") %>%
    str_replace("\\)$", "") %>%
    str_replace_all("([a-zA-Z])\\(", "\\1 (") %>%
    str_trim(side = "left") %>%
    rep(each = rep_each)
}
