# Total female population (observed)
# This dataset is created on the fly as a sum of the age-specific population estimates popF

popFT <- local({
	source('popF.R')
    sum.by.country <- function(dataset) {
        year.cols <- grep('^[0-9]{4}', colnames(dataset), value = TRUE)
        name.col <- grep('^name$|^country$', colnames(dataset), value=TRUE)
        data.table::setnames(dataset, name.col, "name") # rename if necessary
        dataset[, c("country_code", "name", year.cols), 
                with = FALSE][,lapply(.SD, sum, na.rm = TRUE), 
                              by = c("country_code", "name")]
    }
    as.data.frame(sum.by.country(data.table::as.data.table(popF)))
})
