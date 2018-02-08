\name{wpp2017-package}
\alias{wpp2017-package}
\alias{wpp2017}
\docType{package}
\title{
World Population Prospects 2017
}

\description{
Data from the United Nations World Population Prospects 2017, released on June 21, 2017.
}
\details{
\tabular{ll}{
Package: \tab wpp2017\cr
Version: \tab 1.1-2\cr
Date: \tab 2018-2-18\cr
URL: \tab \url{http://esa.un.org/wpp}\cr
}

The package contains the following datasets:
\itemize{
\item \link{tfr}, \link{tfr_supplemental}, \link{tfrprojMed}, \link{tfrproj80u}, \link{tfrproj80l}, \link{tfrproj95u}, \link{tfrproj95l}, \link{tfrprojHigh}, \link{tfrprojLow}: estimates and projections of total fertility rate, including the projected 80\% and 95\% probability bounds, as well as low and high half child variants.
\item \link{e0F}, \link{e0M}, \link[=e0F_supplemental]{e0X_supplemental}, \link[=e0Fproj]{e0Xproj}, \link[=e0Fproj80u]{e0Xproj80u}, \link[=e0Fproj80l]{e0Xproj80l}, \link[=e0Fproj95u]{e0Xproj95u}, \link[=e0Fproj95l]{e0Xproj95l}: sex-specific estimates and projections of life expectancy with X=\dQuote{F} and \dQuote{M}, including the projected 80\% and 95\% probability bounds.
\item \link{pop}, \link{popproj}, \link{popproj80u}, \link{popproj80l}, \link{popproj95u}, \link{popproj95l}, \link{popprojHigh}, \link{popprojLow}: historical estimates of total population counts, as well as the median, probability bounds and the high and low variants of population projections.
\item \link{popF}, \link{popM}, \link[=popFprojMed]{popXprojMed}, \link[=popFprojHigh]{popXprojHigh}, \link[=popFprojLow]{popXprojLow}: age- and sex-specific  population estimates and projections with X=\dQuote{F} and \dQuote{M}, including the high and low variants.
\item \link{mxF}, \link{mxM}: age- and sex-specific mortality rates
\item \link{migration}: total net migration 
\item \link{sexRatio}: sex ratio at birth as a ratio of female to male
\item \link{percentASFR}: distribution of age-specific fertility rates
\item \link{UNlocations}: location dataset
}
}
\note{The package \pkg{wppExplorer} offers a shiny user interface to explore these datasets as well as functions for convenient extraction of information from the data, see function \code{wpp.indicator} in \pkg{wppExplorer}, or \url{https://rstudio.stat.washington.edu/shiny/wppExplorer/inst/explore/}.
}

\source{
 These datasets are based on estimates and projections of United Nations, Department of Economic and Social Affairs, Population Division (2017). 
 }
 
 \references{
 World Population Prospects: The 2017 Revision. \url{http://esa.un.org/unpd/wpp}.
}


\keyword{ package }