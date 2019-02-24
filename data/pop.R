# Total population (observed)
# This dataset is created on the fly as a sum of the sex-specific population estimates popMT and popFT

pop <- local({
	source('popMT.R')
	source('popFT.R')
	# The male and female dataset should be in the same format, 
	# i.e. the countries and years should be in the same order, but just to be sure
	# match columns and rows. It will fail if there are different sets of countries
	# in the two datasets.
	cols.to.sumM <- colnames(popMT)[-match(c('country_code', "name"), colnames(popMT))]
	cols.to.sumF <- colnames(popFT)[-match(c('country_code', "name"), colnames(popFT))]
	cols.to.sumF.idx <- match(cols.to.sumF, cols.to.sumM)
	rowsF.idx <- match(popFT$country_code, popMT$country_code)
	cbind(country_code=popMT$country_code, name=popMT[,"name"],
			 popMT[,cols.to.sumM] + popFT[rowsF.idx, cols.to.sumF[cols.to.sumF.idx]])
})