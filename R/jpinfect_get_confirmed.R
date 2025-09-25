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
#' @param dest_dir Directory to save files. If NULL, uses tempdir() (files deleted when R session ends).
#'   Specify a permanent directory to keep downloaded data.
#'
#' @details
#' This function validates the input parameters, including the range of years and
#' the type of data. It creates the destination directory if it does not already exist.
#' For each year, the function attempts to download the corresponding file from JIHS.
#' If a file already exists and \code{overwrite = FALSE}, the download is skipped.
#'
#' @return A named list mapping each requested year to its downloaded file path.
#' Successful years contain a character path; failed years are \code{NULL}.
#'
#' @examples
#' \donttest{
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
jpinfect_get_confirmed <- function(years = NULL, type = "sex", overwrite = FALSE, dest_dir = NULL) {
  # Validate type parameter
  if(!type %in% c("sex", "place")) {
    stop("type must be either \"sex\" or \"place\"")
  }

  # Validate years parameter
  # As of 16 March 2025
  max_available_year <- 2023

  if (type == "sex") {
    min_available_year <- 1999
  } else if (type == "place") {
    min_available_year <- 2001
  }

  # If no years specified, use the most recent available year
  if(is.null(years)) {
    years <- min_available_year:max_available_year
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

  # Create temporal destination directory if it doesn't exist
  if(is.null(dest_dir)) {
    dest_dir <- tempdir()
    warning(
      "Using temporary directory. Downloaded files will be deleted when R session ends.\n",
      "To avoid re-downloading (and reduce server load), specify a permanent directory:\n",
      "jpinfect_get_confirmed(..., dest_dir = 'raw_data')",
      call. = FALSE
    )
  }

  # Ensure the destination directory exists
  if (!is.null(dest_dir)) {
    if (!dir.exists(dest_dir)) {
      stop(sprintf("Directory '%s' does not exist. Please create it manually.", dest_dir))
    }
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
      file_size <- file.info(dest_file)$size
      if (!is.na(file_size) && file_size >= 2000 * 1024) { # Expecting > 2MB
      message(paste0("File already exists: ", dest_file))
      return(dest_file)
      }
      unlink(dest_file) # Remove incomplete or small file
    }

    # Attempt to download: 3 repeats if Download fails
    old_timeout <- getOption("timeout")
    options(timeout = 180)
    on.exit(options(timeout = old_timeout), add = TRUE)

    success <- FALSE
    for (i in 1:3) {
      # delay to access the JIHS server
      Sys.sleep(5)

      if (i == 1) {
        # Message only on the first attempt
        message(sprintf("Downloading: %s", url))
      }

      status <- suppressWarnings(
        download.file(url, destfile = dest_file, mode = "wb", quiet = TRUE)
        )

      # Check download status
      if (!identical(status, 0L)) {
        if (file.exists(dest_file)) unlink(dest_file)
        message(sprintf("Retrying download (%d/3)... (status=%s)", i, status))
        next
        }

      # Check if the file was downloaded
      if (!file.exists(dest_file)) {
        message(sprintf("Retrying download (%d/3)... (no file)", i))
        next
        }

      # Check file size (expecting > 2MB)
      file_size <- file.info(dest_file)$size
      if (is.na(file_size) || file_size < 2000 * 1024) { # 2MB
        unlink(dest_file)
        message(sprintf("Retrying download (%d/3)... (file too small: %s bytes)", i, file_size))
        next
        }

      # Check if the downloaded file is an HTML error page
      first_bytes <- tryCatch(readBin(dest_file, "raw", 100), error = function(e) raw(0))

      # Check for XLSX (PK...) or XLS (D0 CF 11 E0) signatures
      is_xlsx <- length(first_bytes) >= 2 && identical(first_bytes[1:2], charToRaw("PK"))
      is_xls  <- length(first_bytes) >= 4 && identical(as.integer(first_bytes[1:4]), c(0xD0, 0xCF, 0x11, 0xE0))

      if (!(is_xlsx || is_xls)) {
        # ASCII check for HTML content
        ascii_ok <- length(first_bytes) > 0 && all(as.integer(first_bytes) %in% c(9L,10L,13L,32L:126L))

        if (ascii_ok) {
          # Convert to lowercase text for HTML signature check
          txt <- tryCatch(tolower(rawToChar(first_bytes, multiple = TRUE)),
                          error = function(e) "")
          html_signatures <- c("<html", "<!doctype html", "<head", "<body", "<title")
          if (any(vapply(html_signatures, function(p) grepl(p, txt, fixed = TRUE), logical(1)))) {
            unlink(dest_file)
            message(sprintf("Retrying download (%d/3)... (looks like HTML)", i))
            next
          }
        }
      }

      success <- TRUE
      break
    }

    if (!success || !file.exists(dest_file)) {
      message(paste0("Download failed: ", url, "\nPlease check the server status or try again later."))
      return(NULL)
    }

    message(paste0("Download completed: ", dest_file))
    return(dest_file)

      })

  return(invisible(download_results))
}
