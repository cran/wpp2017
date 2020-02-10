\name{sexRatio}
\alias{sexRatio}

\docType{data}
\title{
Sex Ratio at Birth
}
\description{
Estimates and projections of the sex ratio at birth derived as the number of female divided by the number of male.
}
\usage{
    data(sexRatio)
}
\format{
  A data frame with one record per country. It contains columns \code{country_code}, \code{name}, and one column per five-year time interval (i.e., from 1 July in year t to 1 July in year t+5 such as the period 1950-1955 refers to the period 1950.5-1955.5 and the mid of the period is 1953.0).
}
\source{
 This dataset is based on estimates and projections of United Nations, Department of Economic and Social Affairs, Population Division (2017). 
 }
 
 \references{
 World Population Prospects: The 2017 Revision. \url{http://population.un.org/wpp}.
}

\examples{
data(sexRatio)
str(sexRatio)
}
\keyword{datasets}
