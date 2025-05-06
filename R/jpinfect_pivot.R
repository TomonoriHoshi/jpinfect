#' Convert data from wide format to long format for easier analysis
#'
#' @description
#' This function pivots a dataset between long and wide formats based on the column count.
#' If the dataset has 5 or fewer columns, it is pivoted to a wide format, keeping
#' `prefecture`, `year`, `week` and `date` as fixed identifiers. If the dataset has more than 5 columns,
#' it is pivoted to a long format.
#'
#' @param dataset A data frame containing the columns `prefecture`, `year`, `week`, `date`
#' and additional columns for diseases and their associated case counts.
#'
#' @return
#' A data frame that is pivoted either to a long or wide format, depending on the number of columns.
#' If `prefecture`, `year`, `week` or `date` are missing from the dataset, the function stops with an error.
#'
#' @details
#' - If the dataset has 5 or fewer columns, the function uses `pivot_wider()` to convert
#'   the dataset to a wide format.
#' - If the dataset has more than 5 columns, the function uses `pivot_longer()` to convert
#'   the dataset to a long format.
#' - The function ensures that the columns `prefecture`, `year`, `week` and `date` are always present.
#'
#' @examples
#' \dontrun{
#' # Pivot the dataset
#' result <- jpinfect_pivot(bind_dataset)
#' print(result)
#' }
#'
#' @importFrom dplyr mutate
#' @importFrom tidyr pivot_longer pivot_wider
#'
#' @export
jpinfect_pivot <- function(dataset) {
  # Check if the dataset contains the required columns
  required_columns <- c("prefecture", "year", "week", "date")
  missing_columns <- setdiff(required_columns, colnames(dataset))

  if (length(missing_columns) > 0) {
    stop(paste("Error: The following required columns are missing from the dataset:",
               paste(missing_columns, collapse = ", ")))
  }

  # Count the number of columns to determine the pivot mode
  col_count <- ncol(dataset)

  # Use 5 columns as the threshold to select the pivot mode
  if (col_count <= 6) {
    temp_data <- dataset %>% pivot_wider(id_cols = c(prefecture, year, week, date), names_from = disease, values_from = cases)
  } else {
    temp_data <- dataset %>% pivot_longer(cols = -c(prefecture, year, week, date), names_to = "disease", values_to = "cases")
  }
  return(temp_data)

}
