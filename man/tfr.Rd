\name{tfr}
\alias{tfr}
\alias{tfr_supplemental}
\alias{tfrprojMed}
\alias{tfrprojHigh}
\alias{tfrprojLow}
\alias{tfrproj80l}
\alias{tfrproj80u}
\alias{tfrproj95l}
\alias{tfrproj95u}
\docType{data}
\title{
United Nations Time Series of Total Fertility Rate
}
\description{
Datasets containing the United Nations time series of the total fertility rate (TFR) for all countries of the world as available in 2017. 
}
\usage{
data(tfr)
data(tfr_supplemental)

data(tfrprojMed)
data(tfrproj80l)
data(tfrproj80u)

data(tfrproj95l)
data(tfrproj95u)

data(tfrprojHigh)
data(tfrprojLow)
}

\format{
  The datasets contain one record per country or region. It contains the following variables:
  \describe{
    \item{\code{country_code}}{Numerical Location Code (3-digit codes following ISO 3166-1 numeric standard) - see \url{http://en.wikipedia.org/wiki/ISO_3166-1_numeric}.}
    \item{\code{name}}{Name of country or region (following ISO 3166 official short names in English - see \url{https://www.iso.org/obp/ui/#search/code/} and United Nations Multilingual Terminology Database - see \url{https://unterm.un.org/unterm}).}
    \item{\code{1950-1955}, \code{1955-1960}, \dots}{TFR in various five-year time intervals (i.e., from 1 July in year t to 1 July in year t+5 such as the period 1950-1955 refers to the period 1950.5-1955.5 and the mid of the period is 1953.0). The \code{tfrproj*} datasets start at \code{2015-2020}. The \code{tfr_supplemental} datasets start at \code{1740-1745}. Missing data have \code{NA} values.}
  }
}
\details{Dataset \code{tfr} contains estimates of the historical TFR starting with 1950; \code{tfr_supplemental} contains a subset of countries for which data prior 1950 are available. Datasets \code{tfrprojMed} contain the median projections. Datasets  \code{tfrproj80l}, \code{tfrproj80u}, \code{tfrproj95l}, and \code{tfrproj95u} are the lower (l) and upper (u) bounds of the 80 and 95\% probability intervals, respectively.
Datasets \code{tfrprojHigh} and \code{tfrprojLow} contain high and low variants, respectively, defined as +-1/2 child.

The historical dataset is contained in (tfr_supplemental.txt) for 103 countries or areas covering the period 1740-1950 (including 24 countries with data before 1850), and is based on series for five-year periods from the following sources: (1) Max Planck Institute for Demographic Research (Germany) and Vienna Institute of Demography (Austria). (2012). Human Fertility Database (HFD). Available at \url{https://www.humanfertility.org}. Data downloaded on 13 May 2012; (2) Festy, P. (1979). La fecondite des pays occidentaux de 1870 a 1970. Paris: Presses universitaires de France; (3) Chesnais, J.C. (1992). The demographic transition: stages, patterns, and economic implications: a longitudinal study of sixty-seven countries covering the period 1720-1984. Oxford ; New York: Clarendon Press; (4) Bhat, P.N.M. (1989). "Mortality and fertility in India, 1881-1961: a reassessment." pp. 73-118 in India's historical demography: studies in famine, disease and society, edited by T. Dyson. London and Riverdale, Md: Curzon and Riverdale Co.; (5) Hofsten, E.A.G.v. and H. Lundstrom. (1976). Swedish population history: Main trends from 1750 to 1970. Stockholm: Statistiska centralbyran: LiberForlag; (6) Ajus, F. and M. Lindgren. (2012). Gapminder fertility dataset, 2010 (including documentation for Children per Woman (Total Fertility Rate) for countries and territories, Version 2. The Gapminder Foundation. Sweden, Stockholm. \url{http://www.gapminder.org/data/documentation/gd008/}. Data downloaded on 8 April 2012.}

\source{
 These datasets are based on estimates and projections of United Nations, Department of Economic and Social Affairs, Population Division (2017). 
 }
 
 \references{
 World Population Prospects: The 2017 Revision. \url{http://population.un.org/wpp}.
}

\examples{
data(tfr)
head(tfr)

data(tfrprojMed)
str(tfrprojMed)
}
\keyword{datasets}
