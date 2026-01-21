make_submission <- function(name, dataframe) {
    ## Parameters
    ## ----------
    ##  name:               string, your name
    ##  submission_number:  int or string
    ##  dataframe:         data.frame [20000, 2], userId and 
    ##                          predicted probabilties on the test set
    
    # check input data frame appropriate shape
    if(nrow(dataframe) != 20000 | ncol(dataframe) != 2) {
        stop('data frame is wrong shape. Expecting [20000, 2]')
    # check input data for correct column names
    } else if(names(dataframe)[1] != 'userId') {
        stop('column 1 name is wrong. Expecting userId')
    }
    
    filename <- paste0(name, '.csv')
    write.csv(dataframe, filename, row.names = FALSE)
    
    return(paste(filename, 'created'))
}