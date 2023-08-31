airquality <- data.frame(
  Ozone = c(41, 36, 12, 18, NA, 28),
  Solar.R = c(190, 118, 149, 313, NA, NA),
  Wind = c(7.4, 8, 12.6, 17.5, 14.3, 17.9),
  Temp = c(67, 72, 74, 62, 56, 66),
  Month = c(5, 5, 5, 5, 5, 5),
  Day = c(1, 2, 3, 4, 5, 6)
)
print("Air Quality Data Set:\n")
print(airquality)
mean <- sum(airquality$Temp)/length(airquality$Temp)
cat("Mean Temperature:",mean,"\n")
ext <- airquality[c(1:5),]
print("First five rows of Air Quality Data Set:\n")
print(ext)
extract <- airquality[,!names(airquality) %in% c("Wind", "Temp")]
print("Air Quality Data Set except Wind and Temp:\n")
print(extract)
min <- min(airquality$Temp)
d <- airquality[airquality$Temp==min,]
cat("Coolest day during the period:",d$Day,"\n")
wind <- airquality[airquality$Wind>17,]
print(wind)
cat("Number of days where wind speed was greater than 17 mph:",sum(airquality$Wind>17),"\n")
