# Line chart
data(iris)

library(ggplot2)

iris$index <- 1:nrow(iris)

ggplot(iris, aes(x = index, y = Sepal.Length)) +
  geom_line(color = "blue", linewidth = 0.6) +
  geom_point(color = "red", size = 1) +
  labs(
    title = "Iris Dataset Line Chart",
    subtitle = "Sepal Length Values",
    x = "Observation Number",
    y = "Sepal Length",
    caption = "Using Iris Dataset"
  ) +
  theme_minimal()
