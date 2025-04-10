#' jpinfect: Japan Institute for Health Security Infectious Disease Data in R
#'
#' @description
#' This package provides functions to download and post-process infectious
#' disease data from the Japan Institute for Health Security.
#'
#' @section Main Functions:
#' \itemize{
#'   \item \code{jpinfect_url_confirmed()}: Display dataset URLs of Confirmed Cases based on Infectious Diseases Weekly Report (IDWR)
#'   \item \code{jpinfect_url_bullet()}: Display Infectious Diseases Weekly Report (IDWR) URLs
#'   \item \code{jpinfect_get_confirmed()}: Download the confirmed case datasets from the Japan Institute for Health Security (JIHS)
#'   \item \code{jpinfect_get_bullet()}: Download the bullet reports from the Japan Institute for Health Security (JIHS)
#'   \item \code{jpinfect_read_confirmed()}: Import one year or more years of confirmed dataset
#'   \item \code{jpinfect_read_bullet()}: Import one week or more weeks of bullet reports
#'   \item \code{jpinfect_merge()}: Merge multiple disease datasets into a unified data table
#'   \item \code{jpinfect_pivot()}: Convert data from wide format to long format for easier analysis
#'}
#'
#' @name jpinfect-package
#' @aliases jpinfect
#'
#' @keywords internal
"_PACKAGE"

#' @importFrom utils download.file
#' @importFrom httr HEAD
#' @importFrom dplyr select select_if filter relocate bind_rows bind_cols
#' @importFrom readxl read_excel
#' @importFrom readr read_csv
#' @importFrom stringr str_extract str_detect str_replace str_c str_replace_all str_trim
#' @importFrom tidyselect last_col
#' @importFrom magrittr %>%
#' @importFrom future.apply future_lapply
#' @importFrom future plan
#' @importFrom progressr progressor
NULL
