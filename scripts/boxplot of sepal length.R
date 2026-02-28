data("iris")

# Display basic information
print("Structure of Iris Dataset:")
str(iris)

print("First 6 Rows of Iris Dataset:")
head(iris)
species_count <- table(iris$Species)

print("Species Count:")
print(species_count)

# Vertical Bar Chart
barplot(species_count,
        main = "Bar Chart of Iris Species Count",
        xlab = "Species",
        ylab = "Number of Flowers",
        col = c("red", "green", "blue"),
        border = "black")

barplot(species_count,
        main = "Horizontal Bar Chart of Iris Species",
        xlab = "Number of Flowers",
        ylab = "Species",
        col = c("orange", "purple", "cyan"),
        border = "black",
        horiz = TRUE)

pie(species_count,
    main = "Pie Chart of Iris Species Distribution",
    col = c("red", "green", "blue"))

iris$SepalWidthCategory <- cut(iris$Sepal.Width,
                               breaks = 3,
                               labels = c("Low", "Medium", "High"))

# Create frequency table
grouped_data <- table(iris$SepalWidthCategory, iris$Species)

print("Grouped Data (Sepal Width Category vs Species):")
print(grouped_data)


barplot(grouped_data,
        main = "Grouped Bar Chart: Sepal Width vs Species",
        xlab = "Species",
        ylab = "Count",
        col = c("yellow", "pink", "lightblue"),
        beside = TRUE,
        legend = rownames(grouped_data))

barplot(grouped_data,
        main = "Stacked Bar Plot: Sepal Width vs Species",
        xlab = "Species",
        ylab = "Count",
        col = c("yellow", "pink", "lightblue"),
        legend = rownames(grouped_data))
iris$SepalLengthCategory <- cut(iris$Sepal.Length,
                                breaks = 3,
                                labels = c("Short", "Medium", "Long"))

stack_data2 <- table(iris$SepalLengthCategory, iris$Species)

print("Stack Data (Sepal Length Category vs Species):")
print(stack_data2)

barplot(stack_data2,
        main = "Stacked Plot: Sepal Length Category by Species",
        xlab = "Species",
        ylab = "Count",
        col = c("lightgreen", "orange", "violet"),
        legend = rownames(stack_data2))

percentage_data <- prop.table(stack_data2, margin = 2)

barplot(percentage_data,
        main = "Percentage Stacked Bar Plot",
        xlab = "Species",
        ylab = "Proportion",
        col = c("lightgreen", "orange", "violet"),
        legend = rownames(percentage_data))

boxplot(Sepal.Length ~ Species,
        data = iris,
        main = "Boxplot of Sepal Length by Species",
        xlab = "Species",
        ylab = "Sepal Length",
        col = c("red", "green", "blue"))