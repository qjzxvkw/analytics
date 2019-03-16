women
?women
names(women)
str(women)


model1 = lm(weight ~ height, data = women)
summary(model1)
head(mtcars)
str(mtcars)

model2 = lm(mpg ~ wt + hp + disp, data=mtcars)
summary(model2)

model3 = lm(mpg ~ wt + hp, data=mtcars)
summary(model3)

