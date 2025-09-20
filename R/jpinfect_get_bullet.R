#' Download the bullet reports from the Japan Institute for Health Security (JIHS)
#'
#' This function downloads surveillance data from the Japan Institute for Health Security (JIHS)
#' for a specified year and weeks, based on the chosen language (English or Japanese).
#'
#' @param year An integer specifying the year of the data. Must be provided explicitly and must be greater than 2023.
#' @param week A numeric vector specifying the weeks to download (default is 1:53).
#'             Week numbers should be between 1 and 53.
#' @param language A character string specifying the language of the data ('en' for English, 'jp' for Japanese).
#'                 Default is 'en'.
#' @param overwrite A logical value indicating whether to overwrite existing files (default is FALSE).
#'                  If FALSE, existing files are skipped, and only new files are downloaded.
#' @param dest_dir Directory to save files. If NULL, uses tempdir() (files deleted when R session ends).
#'             Specify a permanent directory to keep downloaded data.
#'
#' @return No return value. The function downloads surveillance data files from JIHS and saves them
#'         to the specified directory (`dest_dir`). If the data is unavailable for certain weeks, those weeks
#'         are skipped, and an appropriate message is displayed.
#'
#' @details
#' - The function constructs a URL for JIHS data based on the year, week, and language using `jpinfect_url_bullet`.
#' - If the specified week is invalid (not between 1 and 53), an error is raised.
#' - If the year is earlier than 2024, an error is raised, as the function only works for years after 2023.
#' - Weeks without available data on the server are skipped, and a warning is displayed for each unavailable week.
#' - If the requested file already exists and `overwrite = FALSE`, it is skipped.
#' - A delay (`Sys.sleep(3)`) is used between downloads to avoid overwhelming the server.
#' - Progress updates are displayed in the console using `message()`.
#'
#' @examples
#' \donttest{
#' # Download English data for weeks 1 to 2 in 2025
#' jpinfect_get_bullet(year = 2025, week = 1:2, language = "en")
#'
#' # Download Japanese data for weeks 1 to 2 in 2025
#' jpinfect_get_bullet(year = 2025, week = 1:2, language = "jp")
#'
#' # Overwrite existing files and download English data for week 2 in 2025
#' jpinfect_get_bullet(year = 2025, week = 2, language = "en",
#'                      overwrite = TRUE)
#' }
#'
#' @importFrom utils download.file
#'
#' @export
jpinfect_get_bullet <- function(year = NULL, week = 1:53, language = "en", overwrite = FALSE, dest_dir = NULL) {
  # Validate year
  if (is.null(year)) {
    stop("Please specify a year.")
  }

  if (any(week <= 0 | week > 53)) {
    stop("Week range should be from 1 to either 52 or 53.")
  }

  # Create destination directory if it doesn't exist. Also, if a destination is specified, ensure it exists.
  if (is.null(dest_dir)) {
    dest_dir <- tempdir()
    warning(
      "Using temporary directory. Downloaded files will be deleted when R session ends.\n",
      "To avoid re-downloading (and reduce server load), specify a permanent directory:\n",
      "jpinfect_get_confirmed(..., dest_dir = 'my_data_folder')",
      call. = FALSE
    )
  } else {
    if (!dir.exists(dest_dir)) {
      stop(sprintf("Directory '%s' does not exist. Please create it manually.", dest_dir))
    }
  }


  # Generate URLs using jpinfect_url_bullet
  urls <- jpinfect_url_bullet(year = year, week = week, language = language)

  # Loop through each URL and process the download
  for (i in seq_along(urls)) {
    url <- urls[[i]]
    dest_file <- if (language == "en") {
      file.path(dest_dir, paste0(year, "_", sprintf("%02d", week[i]), "_zensu_en.csv"))
    } else {
      file.path(dest_dir, paste0(year, "_", sprintf("%02d", week[i]), "_zensu_jp.csv"))
    }

    # Check if file already exists
    if (file.exists(dest_file) && !overwrite) {
      message(paste0("File already exists: ", dest_file))
      next  # Skip this iteration if the file already exists
    }

    # Download the file
    message(paste0("Downloading data for week ", week[i], " from URL: ", url))
    tryCatch({
      download.file(url, destfile = dest_file, mode = "wb")
      message(paste0("Download completed: ", dest_file))
    }, error = function(e) {
      warning(paste0("Failed to download data for week ", week[i], ": ", e$message))
    })

    # Avoid overwhelming the server
    Sys.sleep(3)
  }

  message("All requested weeks have been processed.")
}
