library(ggplot2)
data(ChickWeight)
boxplot_plot <- ggplot(ChickWeight, aes(x = as.factor(Diet), y = weight)) +
  geom_boxplot() +
  labs(x = "Diet", y = "Weight", title = "Box Plot of Weight Grouped by Diet")
print(boxplot_plot)
histogram_plot <- ggplot(ChickWeight, aes(x = weight)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black") +
  labs(x = "Weight", y = "Frequency", title = "Histogram of Weight for Diet-1")
print(histogram_plot)
scatter_plot <- ggplot(ChickWeight, aes(x = Time, y = weight, color = as.factor(Diet))) +
  geom_point() +
  labs(x = "Time", y = "Weight", title = "Scatter Plot of Weight vs Time Grouped by Diet")
print(scatter_plot)
