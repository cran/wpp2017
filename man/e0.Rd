\name{e0}
\alias{e0}
\alias{e0_supplemental}
\alias{e0F}
\alias{e0Fproj}
\alias{e0M}
\alias{e0Mproj}
\alias{e0Mproj80l}
\alias{e0Mproj80u}
\alias{e0Mproj95l}
\alias{e0Mproj95u}
\alias{e0Fproj80l}
\alias{e0Fproj80u}
\alias{e0Fproj95l}
\alias{e0Fproj95u}
\alias{e0F_supplemental}
\alias{e0M_supplemental}
\docType{data}
\title{
United Nations Time Series of Life Expectancy
}
\description{
Datasets containing the United Nations time series of the life expectancy (e0) for all countries of the world as available in 2017. 
}
\usage{
data(e0F)
data(e0M)

data(e0F_supplemental)
data(e0M_supplemental)

data(e0Fproj)
data(e0Mproj)

data(e0Fproj80l)
data(e0Fproj80u)
data(e0Mproj80l)
data(e0Mproj80u)

data(e0Fproj95l)
data(e0Fproj95u)
data(e0Mproj95l)
data(e0Mproj95u)
}

\format{
  The datasets contain one record per country or region. They contain the following variables:
  \describe{
    \item{\code{country_code}}{Numerical Location Code (3-digit codes following ISO 3166-1 numeric standard) - see \url{http://en.wikipedia.org/wiki/ISO_3166-1_numeric}.}
    \item{\code{name}}{Name of country or region (following ISO 3166 official short names in English - see \url{https://www.iso.org/obp/ui/#search/code/} and United Nations Multilingual Terminology Database - see \url{https://unterm.un.org/unterm}).}
    \item{\code{1950-1955}, \code{1955-1960}, \dots}{Life expectancy in various five-year time intervals (i.e., from 1 July in year t to 1 July in year t+5 such as the period 1950-1955 refers to the period 1950.5-1955.5 and the mid of the period is 1953.0).  The \code{e0*proj} datasets start at \code{2015-2020}. The \code{e0*_supplemental} datasets start at \code{1750-1755}. Missing data have \code{NA} values.}
  }
}
\details{
	Datasets \code{e0F} and \code{e0F_supplemental} contain estimates for female historical e0; \code{e0M} and \code{e0M_supplemental} contain estimates for male historical e0. The \code{*_supplemental} datasets contain a subset of countries for which data prior 1950 are available. Datasets \code{e0Mproj} and \code{e0Fproj} contain projections of male and female e0, respectively. Datasets \code{*80l}, \code{*95l} are the lower bounds of 80 and 95\% probability intervals,  \code{*80u}, \code{*95u} are the corresponding upper bounds.

The historical dataset (e0F_supplemental.txt and e0M_supplemental.txt for female and male respectively) for 29 countries or areas covers the period 1750-1950 (including 20 countries with data since at least 1900) is based on a series for 5-year periods from the following sources: (1) University of California at Berkeley (USA), and Max Planck Institute for Demographic Research (Germany). (2012). Human Mortality Database Available at \url{https://www.mortality.org}. Data downloaded on 9 Jan. 2012; (2) University of California at Berkeley (USA), Max Planck Institute for Demographic Research (Germany), and Institut National d'Etudes Demographiques (France). Human Life-Table Database (2011). Available at \url{https://www.lifetable.de}. Data downloaded on 29 Dec. 2011; (3) Statistics Finland (2006). Statistical Yearbook of Finland 2006; (4) Hungarian Central Statistical Office (2006). Hungary Demographic Yearbook 2005; (5) Japan Ministry of Internal Affairs and Communication (2012). Historical Statistics of Japan (\url{https://www.e-stat.go.jp/en}); (6) Andreev E.M. et al. (1998). Demographic History of Russia 1927-1959. Informatika, Moscow.
}
\source{
 These datasets are based on estimates and projections of United Nations, Department of Economic and Social Affairs, Population Division (2017). 
 }
 
 \references{
 World Population Prospects: The 2017 Revision. \url{http://population.un.org/wpp}
}

\examples{
data(e0M)
head(e0M)

data(e0Fproj)
str(e0Fproj)
}
\keyword{datasets}
