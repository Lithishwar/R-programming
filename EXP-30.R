library(dplyr)
library(caTools)
library(glmnet)
data(iris)
data <- iris %>%
  select(Species, Petal.Width, Petal.Length)
set.seed(123)
split <- sample.split(data$Species, SplitRatio = 0.8)
train_data <- data[split, ]
test_data <- data[!split, ]
model <- glm(Species ~ Petal.Width + Petal.Length, data = train_data, family = "binomial")
probabilities <- predict(model, newdata = test_data, type = "response")
predicted_classes <- ifelse(probabilities > 0.5, "versicolor", "setosa")
confusion_matrix <- table(predicted_classes, test_data$Species)
cat("Confusion Matrix:\n")
print(confusion_matrix)
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
cat("\nAccuracy:", accuracy, "\n")
