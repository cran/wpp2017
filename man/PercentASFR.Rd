\name{percentASFR}
\alias{percentASFR}
\docType{data}
\title{
Datasets on Age-specific Distribution of Fertility Rates
}
\description{
Datasets giving the percentage of fertility rates over ages 15-50. 
}
\usage{
    data(percentASFR)
}
\format{
  A data frame with one row per country and age group. For each country there are seven age groups. It contains columns \code{country_code}, \code{name}, \code{age} and one column per five-year time interval (i.e., from 1 July in year t to 1 July in year t+5 such as the period 1950-1955 refers to the period 1950.5-1955.5 and the mid of the period is 1953.0).
}

\source{
 This dataset is based on estimates and projections of United Nations, Department of Economic and Social Affairs, Population Division (2017). 
 }
 
 \references{
 World Population Prospects: The 2017 Revision. (\url{http://esa.un.org/unpd/wpp}) Special Tabulations.
}


\examples{
data(percentASFR)
str(percentASFR)
}
\keyword{datasets}
