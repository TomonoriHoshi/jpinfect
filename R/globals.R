# datasets stored in data/*.rda and used inside functions
utils::globalVariables(c("sex_prefecture", "place_prefecture", "bullet"))

# variables used inside dplyr verbs (NSE context)
utils::globalVariables(c(".", "prefecture", "year", "week", "disease", "cases"))
