% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jpinfect_merge.R
\name{.ncol_check}
\alias{.ncol_check}
\title{Check Column Count to Classify Dataset Type}
\usage{
.ncol_check(dataset)
}
\arguments{
\item{dataset}{A data frame whose column count will be analyzed.}
}
\value{
A character string indicating the dataset type (`sex`, `place`, or `bullet`).
If column numbers do not match any predefined types, an error is thrown.
}
\description{
This internal function determines the type of dataset (`sex`, `place`, or `bullet`) based on the number of columns.
}
\keyword{internal}
