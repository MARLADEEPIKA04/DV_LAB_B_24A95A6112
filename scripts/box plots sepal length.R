data(iris)
str(iris)
View(iris)
class(iris)
?iris

boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Length,
        main="Box plot for Sepal Length",
        ylab = "Sepal_Length",
        col='skyblue')

boxplot(Sepal.Legth~Species,
        data=iris,
        main="sepal length by Special",
        xlab="Species",
        ylab="sepallength",
        col=c('pink','green','skyblue'))
boxplot(iris$Sepal.Length,
        main="Box plot for sepal length",
        ylab = "Sepal_length",
        col='skyblue')
boxplot(iris[,1:4],
        main="multi variable box plot",
        col=c('pink','green','skyblue','orange'))
species_colora <- c("setosa"="red",
                    "versicolor" = "steelblue",
                    "virginica" = "green")
boxplot(Sepal.Legth~Species,
        data=iris,
        col = species_colors,
        main="Sepal length by species(Custom color palette)",
        )


library(ggplot2)
ggplot(iris,
       aes(x=Species,y=Sepal.Length))+geom_boxplot()

ggplot(iris,aes(x=Species,y=Sepal.Length,fill=Species))+geom_boxplot()+theme_minimal()

ggplot(iris,aes(x=Species,y=Sepal.Length,fill = Species))+geom_boxplot()+scale_fill_manual(
  values=c("setosa"="red",
           "versicolor"="steelblue",
           "virginica"="green")
)+theme_minimal()
