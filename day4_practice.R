#create an iitb student placement database

n=1000 #no of students

rollno=c(1:n) #roll no of students

sname=paste('student',1:n,sep='') #student name

sgender=sample(x=c('M','F'),size = n,prob=c(.35,.65),replace=T) 
#65% females
age=trunc(runif(n,20,30))
marks1 = round((rnorm(n, mean=65,sd=10)),2)
marks2= round((rnorm(n,mean=70,sd=8)),digit=2)
passfail = sample(c('Pass','Fail'),size = n,prob= c(.6,.4),replace=T)

dataiitb =data.frame(rollno,sname,sgender,age,marks1,marks2,passfail)
dataiitb
write.csv(dataiitb,'./data/dataiitb.csv') #subdirectory
summary(dataiitb)
head(dataiitb)
tail(dataiitb)
dim(dataiitb)
nrow(dataiitb)
ncol(dataiitb)
str(dataiitb)
class(dataiitb)

#import from online csv

data2=read.csv('https://raw.githubusercontent.com/qjzxvkw/analytics/master/data/dataiitb.csv')
data2


library(dplyr)
data2 %>% group_by(sgender) %>% summarise(meanM1=mean(marks1),meanM2=mean(marks2))
data2 %>% group_by(sgende,course) %>% summarise(meanM1=mean(marks1),meanM2=mean(marks2))

barplot(height = c(10,20,50,6))
barplot(height = table(data2$passfail))
hist(data2$marks1)
plot(density(data2$age))
fit1=glm(age ~ marks1 +marks2,data = data2)
summary(fit1)
library(rpart.plot)
fit3 = rpart(age ~ marks1+marks2, data=data2,method='class')
rpart.plot(fit3)
?rpart
fit4 = kmeans(data2[,c('age',"marks1",'marks2')],centers = 4)
fit4$centers


