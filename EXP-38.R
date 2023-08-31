library(dplyr)
data("Titanic")
titanic_df <- as.data.frame(Titanic)
survival_class <- titanic_df %>%
  group_by(Class, Survived) %>%
  summarise(Count = sum(Freq))
barplot(matrix(survival_class$Count, ncol = 2), beside = TRUE,
        main = "Survival Count by Passenger Class",
        xlab = "Survived", ylab = "Count", col = c("blue", "red"),
        legend = levels(survival_class$Class))
survival_gender <- titanic_df %>%
  group_by(Sex, Class, Survived) %>%
  summarise(Count = sum(Freq))
par(mfrow = c(1, 2))  # Create side-by-side plots
for (gender in unique(survival_gender$Sex)) {
  subset_data <- subset(survival_gender, Sex == gender)
  barplot(matrix(subset_data$Count, ncol = 2), beside = TRUE,
          main = paste("Survival Count by Passenger Class (", gender, ")", sep = ""),
          xlab = "Survived", ylab = "Count", col = c("blue", "red"),
          legend = levels(subset_data$Class))
}
par(mfrow = c(1, 1))  # Reset the layout
numeric_age <- as.numeric(titanic_df$Age)
hist(numeric_age[!is.na(numeric_age)], breaks = seq(0, 100, by = 5), col = "blue", main = "Distribution of Age",
     xlab = "Age", ylab = "Frequency")
