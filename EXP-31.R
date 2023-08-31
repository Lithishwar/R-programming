v <- c(90,50,70,80,70,60,20,30,80,90,20)
cat("Mean : ",sum(v)/length(v))
cat("\nMedian : ",median(v))
mode <- function()
{
  return(names(sort(-table(v)))[1])
}
mm <- mode()
cat("\nMode : ",mm)
v <- unique(v)
cat("\n2nd Highest value of the given vector : ",sort(v)[length(v)-1])
cat("\n3rd lowest value of the given vector : ",sort(v)[3])
