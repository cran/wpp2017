\name{migration}
\alias{migration}
\docType{data}
\title{
Dataset on Migration
}
\description{
Estimates and projections of total net migration.
}
\usage{
data(migration)
}
\format{
  Data frame with one row per country.  It contains the following variables:
  \describe{
  	\item{\code{country_code}}{Numerical Location Code (3-digit codes following ISO 3166-1 numeric standard) - see \url{http://en.wikipedia.org/wiki/ISO_3166-1_numeric}.}
    \item{\code{name}}{Country name.}    
    \item{\code{1950-1955}, \code{1955-1960},  \dots}{Net migration (in thousand) for the specific five-year time period (i.e., from 1 July in year t to 1 July in year t+5 such as the period 1950-1955 refers to the period 1950.5-1955.5 and the mid of the period is 1953.0).}
  }
}

\source{
 These datasets are based on estimates and projections of United Nations, Department of Economic and Social Affairs, Population Division (2017). 
 }
 
 \references{
 World Population Prospects: The 2017 Revision. (\url{http://esa.un.org/unpd/wpp}) Special Tabulations.
}

\examples{
data(migration)
str(migration)
}
\keyword{datasets}
