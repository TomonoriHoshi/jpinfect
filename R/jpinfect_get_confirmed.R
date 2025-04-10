#' Download the confirmed case datasets from the Japan Institute for Health Security (JIHS)
#'
#' @description
#' This function downloads infectious disease data from the Japan Institute for Health Security (JIHS) for specified years and types.
#'
#' @param years (numeric) A vector of years to download data for. If \code{NULL},
#'   the most recent available year will be used. Available years range from 1999 to 2023.
#' @param type (character) The type of data to download. Must be either \code{"sex"}
#'   or \code{"place"}.
#' @param overwrite (logical) Whether to overwrite existing files. Defaults to \code{FALSE}.
#' @param dest_dir (character) The directory where the downloaded files will be saved.
#'   Defaults to \code{"raw_data"}.
#'
#' @details
#' This function validates the input parameters, including the range of years and
#' the type of data. It creates the destination directory if it does not already exist.
#' For each year, the function attempts to download the corresponding file from JIHS.
#' If a file already exists and \code{overwrite = FALSE}, the download is skipped.
#'
#' @return A character vector of file paths for successfully downloaded files. If
#' a file download fails, the function returns \code{NULL} for that year.
#'
#' @examples
#' \dontrun{
#' # Download data for 2020 and 2021
#' jpinfect_get_confirmed(years = c(2020, 2021), type = "sex")
#'
#' # Download data for all available years
#' jpinfect_get_confirmed(type = "place")
#' }
#'
#' @importFrom utils download.file
#'
#' @export
jpinfect_get_confirmed <- function(years = NULL, type = "sex", overwrite = FALSE, dest_dir = "raw_data") {
  # Validate type parameter
  if(!type %in% c("sex", "place")) {
    stop("type must be either \"sex\" or \"place\"")
  }

  # As of 16 March 2025
  max_available_year <- 2023
  min_available_year <- 1999

  # If no years specified, use the most recent available year
  if(is.null(years)) {
    years <- min_available_year
  }

  # Filter and validate years
  valid_years <- years[years >= min_available_year & years <= max_available_year]

  # Warn about invalid years
  invalid_years <- years[!(years %in% valid_years)]
  if(length(invalid_years) > 0) {
    warning(paste("The following years are outside the available range (1999-2023):",
                  paste(invalid_years, collapse = ", "),
                  "\nThese years will be skipped."))
  }

  # If no valid years, stop
  if(length(valid_years) == 0) {
    stop("No valid years provided. Available years are from 1999 to 2023.")
  }

  # Create destination directory if it doesn't exist
  if(!dir.exists(dest_dir)) {
    dir.create(dest_dir, recursive = TRUE)
  }

  # Download files for valid years using sapply
  download_results <- sapply(valid_years, function(year) {
    url <- jpinfect_url_confirmed(year, type = type)

    if(is.na(url)) {
      warning(paste0("Data for type '", type, "' is not available for year ", year))
      return(NULL)
    }

    dest_file <- file.path(dest_dir, paste0(year, "_", basename(url)))

    # Check if file already exists
    if(file.exists(dest_file) && !overwrite) {
      message(paste0("File already exists: ", dest_file))
      return(dest_file)
    }

    # Attempt to download
    tryCatch({
      message(paste0("Downloading: ", url))

      # delay to access the JIHS server
      Sys.sleep(5)

      download.file(url, destfile = dest_file, mode = "wb")
      message(paste0("Download completed: ", dest_file))
      return(dest_file)
    },
    error = function(e) {
      warning(paste0("Download failed: ", url, "\nPlease check the server status or try again later."))
      return(NULL)
    })
  })

  return(download_results)
}
