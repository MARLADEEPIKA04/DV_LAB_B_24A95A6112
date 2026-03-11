#Load and understand the "mtcars" dataset
#Load dataset

data(mtcars)

#inspect structure
str(mtcars)

#view first few rows
head(mtcars)

#basic heat map(base R)
heatmap(as.matrix(mtcars))

# Improved heat map with labels
heatmap(as.matrix(mtcars), main = "Heatmap of mtcars Dataset", colv = NA, rowv = NA)

#Heat map with Custom colors

colors <- colorRampPalette(c("blue", "yellow", "red"))(50)
heatmap(as.matrix(mtcars), col = colors, main= "Custom color Heatmap")

#Correlation Heat Map(base R)
corr_matrix <- cor(mtcars)

heatmap(corr_matrix, col = colorRampPalette(c("blue" ,"white","red"))(50),
        
        main = "Correlation Heatmap of mtcars")

#ggplot2 Heat Map(basic)

library(reshape2)
mtcars$Car <- rownames(mtcars)
mtcars_long <- melt(mtcars,id.vars = "Car")
View(mtcars_long)
library(ggplot2)
ggplot(mtcars_long, aes(x= variable,y = Car, fill = value)) + geom_tile()

#Styled ggplot Heat Map
ggplot(mtcars_long, aes(x=variable, y=Car, fill = value))+ geom_tile() + scale_fill_gradient(low = "white", high = "red") + theme_minimal() + labs(title = "HeatMap of mtcars Dataset")

#Another way
ggplot(mtcars_long,aes(variable,Car, fill = value)) + geom_tile() + scale_fill_viridis_c() + theme_minimal()

#Correlation heatmap with ggplot2
corr_matrix <- cor(mtcars[,sapply(mtcars, is.numeric)])
corr_long <- melt(corr_matrix)
ggplot(corr_long,aes(x = Var1, y = Var2, fill = value)) + geom_tile() + scale_fill_gradient2(low = "blue", mid = "white", high = "red", midpoint = 0) + theme_minimal() + labs(title = "Correlation Heatmap of mtcars")

#Heatmap with Values Displayed
ggplot(corr_long, aes(x=Var1, y= Var2, fill = value)) + geom_tile() + geom_text(aes(label = round(value,2))) + scale_fill_gradient2( low = "blue", mid = "white", high = "red", midpoint = 0) + theme_minimal()

#Advanced HeatMap using 'pheatmap'
install.packages("pheatmap")
library(pheatmap)
pheatmap(cor(mtcars[,sapply(mtcars,is.numeric)]),
         display_numbers =  round(corr_matrix,2),
         main = "Advanced Correlation Heatmap")