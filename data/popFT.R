# Total female population (observed)
# This dataset is created on the fly as a sum of the age-specific population estimates popF

popFT <- local({
	library(plyr)
	source('popF.R')

	sum.by.country <- function(dataset) {
		year.cols.idx <- grep('^[0-9]{4}', colnames(dataset))
		ddply(dataset[,c(which(colnames(dataset)=='country_code'), year.cols.idx)], "country_code", 
		      .fun=colwise(sum, na.rm = TRUE))
	}
	tpopF <- sum.by.country(popF)
	name.col <- grep('^name$|^country$', colnames(popM), value=TRUE)
	cbind(country_code=tpopF$country_code, name=popF[,name.col][match(tpopF$country_code, popF$country_code)],
	      tpopF[,-1])
})
