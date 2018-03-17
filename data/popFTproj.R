# Total female population (projection median) 
# This dataset is created on the fly as a sum of the age-specific population median projections popFprojMed

popFTproj <- local({
	library(plyr)
	source('popFprojMed.R')
	
	sum.by.country <- function(dataset) {
		year.cols.idx <- grep('^[0-9]{4}', colnames(dataset))
		ddply(dataset[,c(which(colnames(dataset)=='country_code'), year.cols.idx)], "country_code", 
		      .fun=colwise(sum, na.rm = TRUE))
	}
	tpopF <- sum.by.country(popFprojMed)
	name.col <- grep('^name$|^country$', colnames(popFprojMed), value=TRUE)
	cbind(country_code=tpopF$country_code, 
				 name=popFprojMed[,name.col][match(tpopF$country_code, popFprojMed$country_code)],
				 tpopF[,-1])
})