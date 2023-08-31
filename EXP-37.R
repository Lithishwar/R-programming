data("ChickWeight")
ChickWeight$Diet <- as.factor(ChickWeight$Diet)
multi_reg_model <- lm(weight ~ Time + Diet, data = ChickWeight)
new_data <- data.frame(Time = 10, Diet = factor(1))  # Convert Diet to factor
predicted_weight <- predict(multi_reg_model, newdata = new_data)
cat("Predicted weight for Time = 10 and Diet = 1:", predicted_weight, "\n")
actual_weight <- ChickWeight$weight[ChickWeight$Time == 10 & ChickWeight$Diet == 1]
error <- actual_weight - predicted_weight
cat("Error:", error)
