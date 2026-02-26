#load and understand the iris dataset
data(iris)
str(iris)
View(iris)

#basic scatter plot:sepla length vs sepal width
plot(iris$Sepal.Length,iris$Sepal.Width)

#labelled scatter plot
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  main="Sepal length vs Sepal width",
  xlab="Sepal Length(cm)",
  ylab="Sepal width(cm)",
  col='blue',
  pch=16
)

#colored Scatter plot by species
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  col=as.numeric(iris$Species),
  pch=16,
  main="Sepal Dimensions by species"
)

legend(
  "topright",
  legend=levels(iris$Species),
  col=1:3,
  pch=16
)

#Multivariate Scatter
#Add size as a third variable
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  col=as.numeric(iris$Species),
  pch=16,
  cex=iris$Petal.Length/max(iris$Petal.Length),
  main="Multivariate Scatter Plot(Color + Size)"
)

#Scatter PLot Matrix
#All numeric variables against each other
pairs(
  iris[,1:4],
  col=as.numeric(iris$Species),
  pch=16,
  main="Scatter Plot MAtrix of Iris Dataset"
)

#load ggplot2
library(ggplot2)

#Basic Scatter plot
ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width))+
  geom_point()

#colored scatter by species
