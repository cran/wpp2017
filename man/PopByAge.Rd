\name{pop}
\alias{pop}
\alias{popM}
\alias{popF}
\alias{popMT}
\alias{popFT}
\alias{popMprojMed}
\alias{popMprojHigh}
\alias{popMprojLow}
\alias{popFprojMed}
\alias{popFprojHigh}
\alias{popFprojLow}
\alias{popMTproj}
\alias{popFTproj}
\alias{popproj}
\alias{popprojHigh}
\alias{popprojLow}
\alias{popproj80l}
\alias{popproj80u}
\alias{popproj95l}
\alias{popproj95u}
\docType{data}
\title{
Estimates and Projections of Population Counts
}
\description{
Datasets with historical population estimates and projections. 
}
\usage{
data(pop)
data(popMT)
data(popFT)
data(popM)
data(popF)

data(popproj)
data(popproj80l)
data(popproj80u)
data(popproj95l)
data(popproj95u)
data(popprojHigh)
data(popprojLow)

data(popMTproj)
data(popFTproj)

data(popMprojMed)
data(popFprojMed)
data(popMprojHigh)
data(popFprojHigh)
data(popMprojLow)
data(popFprojLow)
}
\format{
	Datasets that start with \code{popM} or \code{popF} and do not have \dQuote{T} in their names, are age-specific and are organized as 
  data frames with one row per country and age group. For each country there are 21 age groups. It contains the following variables:
  \describe{
    \item{\code{country_code}}{Numerical Location Code (3-digit codes following ISO 3166-1 numeric standard) - see \url{http://en.wikipedia.org/wiki/ISO_3166-1_numeric}.}
    \item{\code{name}}{Country name.}
    \item{\code{age}}{A character string representing an age interval. For each country there are 21 values: \dQuote{0-4}, \dQuote{5-9}, \dQuote{10-14}, \dQuote{15-19}, \dQuote{20-24}, \dQuote{25-29}, \dQuote{30-34}, \dQuote{35-39}, \dQuote{40-44}, \dQuote{45-49},  \dQuote{50-54}, \dQuote{55-59}, \dQuote{60-64}, \dQuote{65-69}, \dQuote{70-74}, \dQuote{75-79}, \dQuote{80-84}, \dQuote{85-89}, \dQuote{90-94}, \dQuote{95-99}, and \dQuote{100+} in that order. If there are \code{NA}s for ages 85 and older, the \dQuote{80-84} category is to be treated as \dQuote{80+}.}
    \item{\code{1950}, \code{1955}, \dots}{Population estimate or projection (in thousand) for the given time (mid-year).}
  }
  The remaining datasets, i.e. those that do not have \dQuote{M} or \dQuote{F}, or have \dQuote{T} in their names, contain one row per country.
}

\details{
	Dataset \code{pop} provides estimates of historical total population counts.
	
	Datasets \code{popMT} and \code{popFT} provide estimates of total counts of male and female population, respectively.
	
	Datasets \code{popM} (\code{popF}) contain age-specific estimates of the historical population counts for male (female). 
	
	Dataset \code{popproj} provides median projection of total population counts, i.e. aggregated over sex and age. Datasets \code{popproj80l}, \code{popproj80u}, \code{popproj95l}, and \code{popproj95u} are the lower (l) and upper (u) bounds of the 80 and 95\% probability intervals of the total population. Datasets \code{popprojHigh} and \code{popprojLow} contain the upper and lower variant of total population defined as +- 1/2 child.
	
	Datasets \code{popMTproj} and \code{popFTproj} provide median projection of total counts of male and female population, respectively.
	
	Datasets \code{popXprojMed}, \code{popXprojHigh} and \code{popXprojLow} contain median, high and low variants of age-specific projections, respectively, with X=M for male and X=F for female. 

All values are in thousands.
}

\source{
 These datasets are based on estimates and projections of United Nations, Department of Economic and Social Affairs, Population Division (2017). 
 }
 
 \references{
 World Population Prospects: The 2017 Revision. \url{http://population.un.org/wpp}.
}

\examples{
data(popM)
str(popM)
}
\keyword{datasets}
