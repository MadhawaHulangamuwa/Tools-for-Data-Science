library(datasets)
library(ggplot2)
library(GGally)


data("iris")
head(iris,10)
View(iris)
unique(iris$Species)

data(mtcars)
head(mtcars, 5)



ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")
ggplot(aes(x=Sepal.Length,y=Species,),data=iris) + geom_point() + ggtitle("Sepal length vs Species")

# change axis name
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x = "Displacement", y = "Miles per Gallon")



#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)
iris$Species <- as.factor(iris$Species)

# create boxplot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()
ggplot(aes(x=Species, y=Petal.Width), data = iris) + geom_boxplot()

# Add color to the boxplots to help differentiate:
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + geom_boxplot(alpha=0.3) + theme(legend.position="none") 
ggplot(aes(x=mpg, y=vs, fill = vs), data = mtcars) + geom_boxplot(alpha=0.3) + theme(legend.position="none") 


# Finally, let us create the histogram of weight wt.
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)

ggpairs(iris, mapping=ggplot2::aes(colour = Species))
ggpairs(mtcars, mapping=ggplot2::aes(colour = vs))

