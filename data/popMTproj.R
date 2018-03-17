# Total male population (projection median) 
# This dataset is created on the fly as a sum of the age-specific population median projections popMprojMed

popMTproj <- local({
	library(plyr)
	source('popMprojMed.R')
	
	sum.by.country <- function(dataset) {
		year.cols.idx <- grep('^[0-9]{4}', colnames(dataset))
		ddply(dataset[,c(which(colnames(dataset)=='country_code'), year.cols.idx)], "country_code", 
		      .fun=colwise(sum, na.rm = TRUE))
	}
	tpopM <- sum.by.country(popMprojMed)
	name.col <- grep('^name$|^country$', colnames(popMprojMed), value=TRUE)
	cbind(country_code=tpopM$country_code, 
				 name=popMprojMed[,name.col][match(tpopM$country_code, popMprojMed$country_code)],
				 tpopM[,-1])
})