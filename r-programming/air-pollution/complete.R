complete <- function(directory, id = 1:322) {
    my.data.frame <- data.frame(id=integer() ,nobs=integer() )
    for (val in id) {
        x <- read.csv(paste(directory,"/",sprintf("%03d.csv",val), sep=""))
        complete.cases.number <- nrow(x[complete.cases(x),])
        my.data.frame[nrow(my.data.frame)+1,] <- c(val, complete.cases.number)
    }
    my.data.frame
}
