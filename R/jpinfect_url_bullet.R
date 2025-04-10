#' Display Infectious Diseases Weekly Report (IDWR) URLs
#'
#' @description
#' This function displays the URLs of Infectious Diseases Weekly Report (IDWR)
#' from the Japan Institute for Health Security (JIHS) for a specified year and weeks, based on
#' the chosen language (English or Japanese).
#' See this webpage for further details: https://id-info.jihs.go.jp/
#'
#' @param year An integer specifying the year of the data. Must be provided explicitly and should be after 2021.
#' @param week A numeric vector specifying the weeks to display URLs for (default is 1:53).
#'             Week numbers should be between 1 and 53.
#' @param language A character string specifying the language of the data ('en' for English, 'jp' for Japanese).
#'                 Default is 'en'.
#'
#' @return A character vector of constructed URLs for the specified weeks and language. If the data
#'         is not available for certain weeks, a message is displayed, and those weeks are skipped.
#'
#' @details
#' - The function constructs URLs for each week using the IDWR data source for the specified language.
#' - The year must be explicitly provided and must be greater than 2022.
#' - Week numbers must be valid (1 to 53), otherwise an error is raised.
#' - If the IDWR data is not available for a particular week, a warning is displayed, and that week is skipped.
#' - Progress updates are provided in the console using `message()`.
#'
#' @importFrom httr HEAD
#'
#' @examples
#' \dontrun{
#' # Display URLs for English data for weeks 1 to 5 in 2025
#' jpinfect_url_bullet(year = 2025, week = 1:5, language = "en")
#'
#' # Display URLs for Japanese data for all weeks in 2025
#' jpinfect_url_bullet(year = 2025, language = "jp")
#'
#' # Display URLs for English data for weeks 10 to 20 in 2024
#' jpinfect_url_bullet(year = 2024, week = 10:20, language = "en")
#' }
#'
#' @export
jpinfect_url_bullet <- function(year = NULL, week = 1:53, language = "en") {
  # Check if the year is specified
  if (is.null(year)) {
    stop("Please specify a year.")
  }

  # Check if the year is valid for this function
  if (year <= 2022) {
    stop("This function only works for years after 2023.")
  }

  # Validate the week range
  if (any(week <= 0 | week > 53)) {
    stop("Week range should be from 1 to either 52 or 53.")
  }

  # Validate the language input
  if (!language %in% c("en", "jp")) {
    stop("Invalid language specified. Use 'en' for English or 'jp' for Japanese.")
  }

  # Initialize an empty list to store URLs
  urls <- list()

  # Process weeks for the specified language
  for (index in seq_along(week)) {
    i <- week[index] # Extract the current week value

    # Construct the base URL
    if (language == "en") {
      url_a <- "https://id-info.jihs.go.jp/surveillance/idwr/en/rapid/"
      url_b <- paste0(year, "/", sprintf("%02d", i), "/", "zensu", sprintf("%02d", i), ".csv")
    } else if (language == "jp") {
      url_a <- if ((year >= 2025) & (i >= 11)) {
        "https://id-info.jihs.go.jp/surveillance/idwr/jp/rapid/"
      } else {
        "https://id-info.jihs.go.jp/surveillance/idwr/rapid/"
      }
      url_b <- paste0(year, "/", sprintf("%01d", i), "/", year, "-", sprintf("%02d", i), "-zensu.csv")
    }

    # Combine base URL and file-specific path
    url <- paste0(url_a, url_b)

    # Check if the data is available
    if (length(as.numeric(httr::HEAD(url)$headers$`content-length`)) == 0) {
      message(paste0("NIID data is not available for week ", i, " in year ", year, "."))
      next  # Skip this iteration if data is not available
    }

    # Append the URL to the list
    urls[[index]] <- url
  }

  # Display all processed weeks
  message("All requested weeks have been processed successfully.")

  # Return the URLs
  return(urls)
}
