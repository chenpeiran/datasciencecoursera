corr <- function(directory, threshold = 0) {
    vec <- c()
    for (each.file in dir(directory)) {
        x <- read.csv(paste(directory,"/",each.file,sep=""))
        complete.records <- x[complete.cases(x),]
        complete.cases.number <- nrow(complete.records)
        if (complete.cases.number > threshold) {
            a <- cor(complete.records["sulfate"], complete.records["nitrate"])
            vec <- c(vec,a)
        }
    }
    vec
}
