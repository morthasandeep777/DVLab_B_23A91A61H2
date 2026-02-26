# Load the data

data(iris)


#Understand the Data

str(iris)
View(iris)
class(iris)

?iris

#Basic Box Plot
boxplot(iris$Sepal.Length)

#Add Title & Lables
boxplot(iris$Sepal.Length, 
        main = "Box plot for Sepal Length",
        ylab = "sepal_Length",
        col='skyblue')


#Grouped Box Plot(by Species)
boxplot(Sepal.Length~Species,
        data = iris,
        main = "Sepal Length by Species",
        xlab = "Species",
        ylab = "Sepal Length",
        col = c('pink','green','skyblue'))




#Multivariate Box Plot
boxplot(iris$Sepal.Length, 
        main = "Box plot for Sepal Length",
        ylab = "Sepal_Length",
        col = 'blue')

boxplot(iris[,1:4],
        main = "Multivariate BoxPlot",
        col = c('pink','yellow','orange','red'))



#Using Custom color palette

species_colors <- c("setosa" = "red",
                    "versicolor" ="steelblue",
                    "virginica" = "green")

boxplot(
  Sepal.Length~Species,
  data = iris,
  col = species_colors,
  main = "Sepal Length by Species(Custom color Palette)"
)


#GGPLOT2
library(ggplot2)

ggplot(iris,
       aes(x=Species, y=Sepal.Length))+ geom_boxplot()

#Colored box plot by species
ggplot(iris, aes(x=Species, y=Sepal.Length, fill=Species))+geom_boxplot()+theme_minimal()

#Using Manual Color Palettes

ggplot(iris, aes(x=Species, y=Sepal.Length, fill=Species))+geom_boxplot()+
  scale_fill_manual(
    values = c(
      "setosa" = "red",
      "versicolor" ="steelblue",
      "virginica" = "green"
    )
  )+theme_minimal()