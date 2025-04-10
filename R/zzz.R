utils::globalVariables(c(".", "prefecture", "year", "week", "sex_prefecture", "place_prefecture", "disease", "cases"))

.onLoad <- function(libname, pkgname) {
  #Set Japanese standard time
  Sys.setenv(TZ = "Asia/Tokyo")

  # load default settings
  options(jpinfect.default = TRUE)
}

.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    "jpinfect package loaded successfully. Timezone set to Asia/Tokyo.\n\n",
    "Note: Data accuracy depends on the original source.\n",
    "Data sourced from the Japan Institute for Health Security (JIHS).\n",
    "Usage is subject to their open data policy (Government Standard Terms of Use v1.0).\n",
    "Details: https://id-info.jihs.go.jp/usage-contract.html\n",
    "This library is independently developed and is not affiliated with any government entity."
  )
}
