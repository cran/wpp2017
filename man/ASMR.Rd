\name{mx}
\alias{mxM}
\alias{mxF}
\alias{mx}

\docType{data}
\title{
Age-specific Mortality Data 
}
\description{
Age-specific data on mortality rates for male (\code{mxM}) and female (\code{mxF}).
}
\usage{
data(mxM)
data(mxF)
}
\format{
  Data frames with one row per country and age group. 
 They contain the following variables:
  \describe{
    \item{\code{country_code}}{Numerical Location Code (3-digit codes following ISO 3166-1 numeric standard) - see \url{http://en.wikipedia.org/wiki/ISO_3166-1_numeric}.}
    \item{\code{name}}{Country name.}
    \item{\code{age}}{A character string representing an age interval (given by the starting age of the interval). }
    \item{\code{1950-1955}, \code{1955-1960}, \dots}{mx for the given five-year time period (i.e., from 1 July in year t to 1 July in year t+5 such as the period 1950-1955 refers to the period 1950.5-1955.5 and the mid of the period is 1953.0). Not available data are represented by an empty string.}
  }
}
\note{
Data for ages 85-100+ are not the official UN data. While the published UN mortality datasets contain data only up to 85+, data for ages 85-100+ in this dataset were derived from UN published life table quantities.
}

\source{
 These datasets are based on estimates and projections of United Nations, Department of Economic and Social Affairs, Population Division (2017). 
 }
 
 \references{
 World Population Prospects: The 2017 Revision. \url{http://population.un.org/wpp}
}


\examples{
data(mxF)
head(mxF)
}
\keyword{datasets}
