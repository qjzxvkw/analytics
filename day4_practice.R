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
structure(dataiitb)
class(dataiitb)

