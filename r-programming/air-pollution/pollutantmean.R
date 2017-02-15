pollutantmean <- function(directory, pollutant, id = 1:332) {
    vec <- c()
    for (val in id) {
        x <- read.csv(paste(directory,"/",sprintf("%03d.csv",val), sep=""))
        a <- x[,c(pollutant)]
        vec <- c(vec , a)
    }
    mean(vec,na.rm = TRUE)
}
