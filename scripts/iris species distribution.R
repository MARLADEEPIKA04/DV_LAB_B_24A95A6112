# load the dataset
data(iris)

# verify the dataset
head(iris)
str(iris)
class(iris)
View(iris)

barplot(table(iris$Species))

barplot(table(iris$Species),
        main = "Count of Iris Species",
        xlab = "Species",
        ylab = "No.of Flowers",
        col = "lightblue")

#mean sepal length
mean_sepal <-tapply(iris$Sepal.Length, iris$Species, mean)
mean_sepal

# simple bar plot using base R
barplot(
  mean_sepal,
  main = "Average Sepal Length by Species",
  xlab = "Species",
  ylab = "Mean Sepal Length",
  col = "lightblue")

group_means <- rbind(
  Sepal = tapply(iris$Sepal.Length, iris$Species,mean),
  Petal = tapply(iris$Petal.Length, iris$Species,mean)
)
group_means

group_means1 <- rbind(
  Sepal_l = tapply(iris$Sepal.Length, iris$Species,mean),
  Petal_l = tapply(iris$Petal.Length, iris$Species,mean),
  Sepal_w = tapply(iris$Sepal.Width, iris$Species,mean),
  Petal_w = tapply(iris$Petal.Width, iris$Species,mean)
)
group_means1

barplot(
  group_means1,
  beside = TRUE,
  col =c("skyblue", "pink"),
  legend.text = TRUE,
  main = "Grouped Bar Chart: Sepal vs Petal Length"
)

barplot(
  group_means,
  beside = FALSE,
  col =c("skyblue", "pink"),
  legend.text = TRUE,
  main = "Grouped Bar Chart: Sepal vs Petal Length"
)
# GGPLOT2
library(ggplot2)

library(ggplot2)

ggplot(iris, aes(x = Species)) +
  geom_bar(fill = "yellow", color = "red") +
  labs(
    title = "Iris Species Distribution",
    x = "Species",
    y = "Count"
  ) +
  theme_minimal()
grid()