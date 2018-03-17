# Total male population (observed)
# This dataset is created on the fly as a sum of the age-specific population estimates popM

popMT <- local({
	library(plyr)
	source('popM.R')

	sum.by.country <- function(dataset) {
		year.cols.idx <- grep('^[0-9]{4}', colnames(dataset))
		ddply(dataset[,c(which(colnames(dataset)=='country_code'), year.cols.idx)], "country_code", 
		      .fun=colwise(sum, na.rm = TRUE))
	}
	tpopM <- sum.by.country(popM)
	name.col <- grep('^name$|^country$', colnames(popM), value=TRUE)
	cbind(country_code=tpopM$country_code, name=popM[,name.col][match(tpopM$country_code, popM$country_code)],
	      tpopM[,-1])
})