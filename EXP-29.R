library(datasets)
data("iris")
dim(iris)
str(iris)
summary(iris)
sapply(iris[,1:4],sd)
aggregate(. ~ Species, data = iris, mean)  # Mean by species
aggregate(. ~ Species, data = iris, sd)    # Standard Deviation by species
quantile(iris$Sepal.Width)
quantile(iris$Sepal.Length)
iris1 <- iris
iris1$Sepal.Length.Cate <- cut(iris$Sepal.Length, breaks = quantile(iris$Sepal.Length), labels = FALSE)
aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, mean)
aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, mean)
pivot_table <- table(iris1$Species, iris1$Sepal.Length.Cate)
