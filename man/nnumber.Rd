% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/src.R
\name{nnumber}
\alias{nnumber}
\title{neat representation of numbers}
\usage{
nnumber(
  number,
  digits = 1,
  unit = "custom",
  unit.labels = list(thousand = "K", million = "Mn", billion = "Bn", trillion = "Tn"),
  prefix = "",
  suffix = "",
  thousand.separator = ","
)
}
\arguments{
\item{number}{an integer or double.}

\item{digits}{number of digits to round-off. Default value is 1.}

\item{unit}{unit to which the number to be converted. See examples below.}

\item{unit.labels}{a vector of strings (optional) that gives the unit label for
thousand, million, billion and trillion.}

\item{prefix}{a string (optional) that can be prepended to the formatted
number.}

\item{suffix}{a string (optional) that can be appended at the end of the
formatted number.}

\item{thousand.separator}{a character (optional) that can be used to chunk thousands
to display large numbers. Default is set as comma, dot, comma or underscore
can be used.}
}
\value{
String representation of numbers with suffix denoting K for thousands,
Mn for millions, Bn for billions, Tn for trillions. A number lower than thousand is
represented as it is.
}
\description{
neat representation of numbers
}
\examples{
x <- c(10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000)
nnumber(x)
nnumber(123456789.123456, digits = 1)
nnumber(123456789.123456, digits = 1, unit = 'Mn', prefix = '$')
}
