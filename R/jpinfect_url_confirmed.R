#' Display dataset URLs of Confirmed Cases based on Infectious Diseases Weekly Report (IDWR)
#'
#' @description
#' This function displays the URL for downloading Confirmed Cases based on
#' Infectious Diseases Weekly Report (IDWR) from the Japan Institute for Health Security (JIHS)
#' for a specified year.
#' See this webpage for further details: https://id-info.jihs.go.jp/
#'
#' @param year The year for which to generate the URL. Defaults to 2001.
#' @param type The type of data to download. Must be either "sex" or "place". Defaults to "sex".
#'
#' @return A character string containing the URL for the specified year's data.
#' @examples
#' \dontrun{
#' # Check URL for weekly cases by sex and prefecture in 2010
#' jpinfect_url_confirmed(2010)
#'
#' # Check URL for weekly cases by suspected place of infection and prefecture in 2010
#' jpinfect_url_confirmed(2010, type = "place")
#' }
#' @export
jpinfect_url_confirmed <- function(year = 2001, type = "sex") {
  if(!type %in% c("sex","place")) {
    stop("type must be either \"sex\" or \"place\"")
  }

  if(type == "sex") {
    if(year > 1998 & year < 2001) {
      url_a <- "https://idsc.niid.go.jp/idwr/CDROM/Kako/"
      url_b <- paste0("H", year - 1988)
      url_c <- "/Syuukei/Syu_11.xls"
      url <- paste0(url_a, url_b, url_c)
    }
    else if (year >= 2001 & year < 2011) {
      url_a <- "https://idsc.niid.go.jp/idwr/CDROM/Kako/"
      url_b <- paste0("H", year - 1988)
      url_c <- "/Syuukei/Syu_01_1.xls"
      url <- paste0(url_a, url_b, url_c)
    }
    else if (year >= 2011 & year < 2014) {
      url_a <- "https:/id-info.jihs.go.jp/niid/images/idwr/ydata/"
      url_b <- year
      url_c <- "/Syuukei/Syu_01_1.xls"
      url <- paste0(url_a, url_b, url_c)
    }
    else if (year >= 2014 & year < 2021) {
      url_a <- "https://id-info.jihs.go.jp/niid/images/idwr/ydata/"
      url_b <- year
      url_c <- "/Syuukei/Syu_01_1.xlsx"
      url <- paste0(url_a, url_b, url_c)
    }
    else {
      url_a <- "https://id-info.jihs.go.jp/surveillance/idwr/annual/"
      url_b <- year
      url_c <- "/syulist/Syu_01_1.xlsx"
      url <- paste0(url_a, url_b, url_c)
    }
  } else {  # type == "place"
    if(year > 1998 & year < 2001) {
      warning("Place data are not available for 1999 and 2000")
      return(NA_character_)
    }
    else if (year >= 2001 & year < 2011) {
      url_a <- "https://idsc.niid.go.jp/idwr/CDROM/Kako/"
      url_b <- paste0("H", year - 1988)
      url_c <- "/Syuukei/Syu_02_1.xls"
      url <- paste0(url_a, url_b, url_c)
    }
    else if (year >= 2011 & year < 2014) {
      url_a <- "https://id-info.jihs.go.jp/niid/images/idwr/ydata/"
      url_b <- year
      url_c <- "/Syuukei/Syu_02_1.xls"
      url <- paste0(url_a, url_b, url_c)
    }
    else if (year >= 2014 & year < 2021) {
      url_a <- "https://id-info.jihs.go.jp/niid/images/idwr/ydata/"
      url_b <- year
      url_c <- "/Syuukei/Syu_02_1.xlsx"
      url <- paste0(url_a, url_b, url_c)
    }
    else {
      url_a <- "https://id-info.jihs.go.jp/surveillance/idwr/annual/"
      url_b <- year
      url_c <- "/syulist/Syu_02_1.xlsx"
      url <- paste0(url_a, url_b, url_c)
    }
  }

  return(url)
}

