#Q1 Dataset with a mix of quantitative and qualitative (categorical) variables. Taken from - (https://www.kaggle.com/borapajo/food-choices#food_coded.csv)

#Q2 Reading and importing dataset into R
b<-read.csv("food.csv")

#Q3 Descriptive statistics
summary(b)
mean(b$GPA)
sd(b$GPA)
median(b$GPA)
var(b$GPA)
plot(b$type_sports, b$weight, main='Sports v/s Weight', xlab = 'Sports', ylab = 'Weight', asp = 1, col= "blue")


#Q4 Transforming variable
b$transform<- b$tortilla_calories + b$calories_chicken
b$chic_and_tort<-b$transform
b$transform<-NULL

#Q5 Plot
hist(b$GPA)
plot(b$GPA)
plot(b$GPA, b$chic_and_tort)
