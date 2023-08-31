library(dplyr)
library(tidyr)
data("ChickWeight")
print(ChickWeight)
ordered_data <- ChickWeight[order(ChickWeight$weight), ]
last_six_records <- tail(ordered_data, 6)
print(last_six_records)
melted_data <- ordered_chick_weight %>%
  pivot_longer(cols = starts_with("weight"), names_to = "Time of Diet", values_to = "Weight")
print(melted_data)
mean_weight_by_diet <- melted_data %>%
  group_by(Diet, Time) %>%
  summarise(mean_weight = mean(Weight)) %>%
  pivot_wider(names_from = Time, values_from = mean_weight)
print(mean_weight_by_diet)
mode_weight_by_diet <- melted_data %>%
  group_by(Diet, Time) %>%
  summarise(mode_weight = as.numeric(names(table(Weight)[which.max(table(Weight))]))) %>%
  pivot_wider(names_from = Time, values_from = mode_weight)
print(mode_weight_by_diet)
