library(datasets)
data("iris")
View(iris)

unique(iris$Species)

library(datasets)
# Load Data
data(mtcars)
# View first 5 rows
head(mtcars, 5)

#load ggplot package
library(ggplot2)
# create a scatterplot of displacement (disp) and miles per gallon (mpg)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()


# Add a title
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")

# change axis name
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x = "Displacement", y = "Miles per Gallon")




# Use the following to create a boxplot of the the distribution of mpg for the individual Engine types vs Engine (0 = V-shaped, 1 = straight)
# To do this you have to make vs a string or factor.

#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)
# create boxplot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

# Add color to the boxplots to help differentiate:
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + geom_boxplot(alpha=0.3) + theme(legend.position="none") 


# Finally, let us create the histogram of weight wt.
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)


library(GGally)
ggpairs(iris, mapping=ggplot2::aes(colour = Species))
