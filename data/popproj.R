# Total population (projection median) 
# This dataset is created on the fly as a sum of the sex-specific population median projections popMTproj and popFTproj

popproj <- local({
	source('popMTproj.R')
	source('popFTproj.R')
	# The male and female dataset should be in the same format, 
	# i.e. the countries and years should be in the same order, but just to be sure
	# match columns and rows. It will fail if there are different sets of countries
	# in the two datasets.
    tpopM <- popMTproj
    tpopF <- popFTproj
	cols.to.sumM <- colnames(tpopM)[-match(c('country_code', "name"), colnames(tpopM))]
	cols.to.sumF <- colnames(tpopF)[-match(c('country_code', "name"), colnames(tpopF))]
	cols.to.sumF.idx <- match(cols.to.sumF, cols.to.sumM)
	rowsF.idx <- match(tpopF$country_code, tpopM$country_code)
	cbind(country_code=tpopM$country_code, 
				 name=tpopM[,"name"],
				 tpopM[,cols.to.sumM] + tpopF[rowsF.idx, cols.to.sumF[cols.to.sumF.idx]])
})