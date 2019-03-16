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

#clustering
kmeans
mtcars$mpg
dim(mtcars)
str(mtcars)
nrow(mtcars)
ncol(mtcars)
?mtcars
summary(mtcars)
data1=mtcars
data1



model3 = kmeans(mtcars$mpg, centers = 3)
model3
model3$cluster
cbind(mtcars$mpg,model3$cluster)

df2= mtcars
model4 = kmeans((mtcars$mpg, mtcars$wt), centers = 3)
model3
model3$cluster
cbind(mtcars$mpg,model3$cluster)

df2 = cbind(mtcars[,c('mpg','wt')], cluster2=model4$cluster)
