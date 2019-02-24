# Total male population (observed)
# This dataset is created on the fly as a sum of the age-specific population estimates popM

popMT <- local({
	source('popM.R')
    #suppressPackageStartupMessages(library(data.table))
	sum.by.country <- function(dataset) {
		year.cols <- grep('^[0-9]{4}', colnames(dataset), value = TRUE)
		name.col <- grep('^name$|^country$', colnames(dataset), value=TRUE)
		data.table::setnames(dataset, name.col, "name") # rename if necessary
		dataset[, c("country_code", "name", year.cols), 
		        with = FALSE][,lapply(.SD, sum, na.rm = TRUE), 
		                      by = c("country_code", "name")]
	}
	as.data.frame(sum.by.country(data.table::as.data.table(popM)))
})