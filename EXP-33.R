library(dplyr)
library(tidyr)
data("airquality")
summary_stats <- summary(airquality)
print(summary_stats)
melted_data_long <- airquality %>%
  pivot_longer(cols = -c(Month, Day), names_to = "Variable", values_to = "Value")
print(melted_data_long)
melted_data_id <- airquality %>%
  pivot_longer(cols = -c(Month, Day), names_to = "Variable", values_to = "Value", names_prefix = "Var_")
print(melted_data_id)
casted_data <- melted_data_id %>%
  pivot_wider(names_from = Variable, values_from = Value)
print(casted_data)
averaged_data <- melted_data_id %>%
  group_by(Month, Variable) %>%
  summarise(Average = mean(Value, na.rm = TRUE)) %>%
  pivot_wider(names_from = Variable, values_from = Average)
print(averaged_data)
