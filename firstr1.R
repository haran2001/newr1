
weightmedian <- function(directory, day)
{
  dat <- data.frame()
  files <- list.files(directory, full.names=TRUE)
  
  for(i in 1:5)
  {dat <- rbind(dat,read.csv(files[i]))}
  
  newday <- dat[which(dat[,"Day"]==day),]
  median(newday[,"Weight"], na.rm=TRUE)
  
}
 x=5
