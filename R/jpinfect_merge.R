#' Merge multiple disease datasets into a unified data table
#'
#' @description
#' This function merges multiple datasets (`dataset1`, `dataset2`, and optionally `dataset3`) based on shared columns: `prefecture`, `year`, and `week`.
#' It also renames column names according to the dataset type (`sex`, `place`, or `bullet`).
#'
#' @param dataset1 A data frame containing "sex" data to be merged.
#' @param dataset2 A data frame containing "place" data to be merged.
#' @param dataset3 (Optional) A third dataset containing "bullet" data to be added.
#'
#' @return
#' A data frame that combines all input datasets and applies consistent column renaming.
#'
#' @importFrom magrittr %>%
#' @importFrom stringr str_replace_all
#' @importFrom dplyr full_join bind_rows
#'
#' @examples
#' \dontrun{
#' # Example usage
#' bind_result <- jpinfect_merge(sex_prefecture, place_prefecture, bullet)
#' }
#'
#' @export
jpinfect_merge <- function (dataset1 = sex_prefecture, dataset2 = place_prefecture, dataset3 = NULL) {
  # Classify data types: sex, place or bullet
  comment(dataset1) <- .ncol_check(dataset1)
  comment(dataset2) <- .ncol_check(dataset2)
  if (!is.null(dataset3)) comment(dataset3) <- .ncol_check(dataset3)

  # Rename columns
  colnames(dataset1) <- .col_join_rename(dataset1)
  colnames(dataset2) <- .col_join_rename(dataset2)
  if (!is.null(dataset3)) colnames(dataset3) <- .col_join_rename(dataset3)

  # merge datasets
  temp_data <- full_join(dataset1, dataset2, by = c("prefecture", "year", "week"))
  if (!is.null(dataset3)) temp_data <- bind_rows(temp_data, dataset3)

  return(temp_data)

}


#' Check Column Count to Classify Dataset Type
#'
#' @description
#' This internal function determines the type of dataset (`sex`, `place`, or `bullet`) based on the number of columns.
#'
#' @param dataset A data frame whose column count will be analyzed.
#'
#' @return
#' A character string indicating the dataset type (`sex`, `place`, or `bullet`).
#' If column numbers do not match any predefined types, an error is thrown.
#'
#' @importFrom magrittr %>%
#' @importFrom stringr str_replace_all
#'
#' @examples
#' \dontrun{
#' comment(dataset1) <- .ncol_check(dataset1)
#' }
#'
#' @keywords internal
.ncol_check <- function (dataset) {
  col_count <- ncol(dataset) - 3
  if (col_count < 0) stop("Not enough cols for data merge.")

  if (all((col_count %% 3 == 0) & (dataset$year <= 2023))) {
    return("sex")
  } else if (all((col_count %% 4 == 0) & (dataset$year <= 2023))) {
    return("place")
  } else if (all((col_count %% 2 == 0) & (dataset$year > 2023))) {
    return("bullet")
  } else {
    stop("Column numbers are not suitable for data merge.")
  }
}


#' Prepare Column Names for Renaming Based on Dataset Type
#'
#' @description
#' This internal function standardizes column names for consistency in merged datasets. Column names are transformed based on the dataset type (`sex`, `place`, or `bullet`).
#'
#' @param dataset A data frame whose column names will be renamed.
#'
#' @return
#' A vector of modified column names based on the dataset type.
#'
#' @importFrom magrittr %>%
#' @importFrom stringr str_replace_all
#'
#' @examples
#' \dontrun{
#' colnames(dataset1) <- .col_join_rename(dataset1)
#' }
#'
#' @keywords internal
.col_join_rename <- function (dataset) {
  if (comment(dataset) == "sex")  {
    temp_colnames <- colnames(dataset)
    temp_colnames <- temp_colnames %>% str_replace_all("total", "sex total")
  } else if (comment(dataset) == "place")  {
    temp_colnames <- colnames(dataset)
    temp_colnames <- temp_colnames %>% str_replace_all("Unknown", "Unknown place")
    temp_colnames <- temp_colnames %>% str_replace_all("Others", "Other places")
  } else if (comment(dataset) == "bullet") {
    temp_colnames <- colnames(dataset)
    temp_colnames <- temp_colnames %>% str_replace_all("weekly", "total")
  }
  return(temp_colnames)
}

