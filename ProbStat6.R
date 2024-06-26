summary(iris)
head(iris)
by(iris$Petal.Length, iris$Species, summary)
mean(iris$Sepal.Length)
var(iris$Sepal.Length)
boxplot(iris$Petal.Length)
boxplot(Petal.Length ~ Species, data=iris, main="Petal Length", xlab="Species", ylab="Length")
hist(iris$Petal.Length)
hist(iris$Sepal.Width)
hist(iris$Sepal.Width[iris$Species=="setosa"])
hist(iris$Sepal.Width[iris$Species=="versicolor"])
d=density(iris$Petal.Length) plot(d)

d=density(iris$Petal.Length) 
plot(d)

d=density(iris$Sepal.Width[iris$Species=="versicolor"]) plot (d)
d=density(iris$Sepal.Width[iris$Species=="versicolor"]) 
plot (d)

library(ggplot2)
plot (d)
data_Rombon <- read.csv("C:/ProbStat/DirectMarketing.csv", sep = ",")
qplot(data_Rombon$AmountSpent, data_Rombon$Salary)
plot(data_Rombon$AmountSpent,data_Rombon$Salary)
hist(data_Rombon$AmountSpent)
d=density(data_Rombon$AmountSpent)
plot (d)
data_Rombon1 <- read.csv("C:/ProbStat/houseprices.csv", sep = ",")
plot(data_Rombon1$Price, data_Rombon1$SqFt, xlab = "SqFt", ylab = "Price")
d=density(iris$Sepal.Width[iris$Species=="versicolor"]) 

