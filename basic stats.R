data("quakes")
quakes<-datasets::quakes
View(quakes)
summary(quakes)
head(quakes)
head(quakes,20)
tail(quakes)
tail(quakes,10)
sum(quakes$depth)
sum(is.na(quakes))
quakes[,c(1:4 )]
quakes[1:4,2:4]
 quakes$dept
colnames(quakes)
plot(quakes)
plot(quakes$long)
plot(quakes$depth,type = "b")
plot(quakes$depth,type = "o")
plot(quakes$depth,type = "l",col="green")
plot(quakes$depth,xlab='sweta',ylab='dalai',main='basic',col="green")
 barplot(quakes$depth)    
barplot(quakes$depth,main = 'quakes',xlab='sweta',ylab = 'dalai',col = 'blue',horiz = F) 
barplot(quakes$stations, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col= 'red',horiz = F)
hist(quakes$depth,col = 'blue')
boxplot(quakes)
boxplot(quakes$long)
boxplot(quakes[,1:4], 
        main='Multiple')
## Grid##
par(mfrow=c(3,3),mar=c(2,5,2,1),las=1,bty="n")
plot(quakes)
plot(quakes$long)
plot(quakes$depth,type = "b")
plot(quakes$depth,type = "o")
plot(quakes$depth,type = "l",col="green")
plot(quakes$depth,xlab='sweta',ylab='dalai',main='basic',col="green")
barplot(quakes$depth)    
barplot(quakes$depth,main = 'quakes',xlab='sweta',ylab = 'dalai',col = 'blue',horiz = F) 
barplot(quakes$stations, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col= 'red',horiz = F)
hist(quakes$depth,col = 'blue')
### Probability##

pnorm(680,711,29)
pnorm(730,711,29)
pnorm(730,711,29)-pnorm(680,711,29)
pnorm(750,711,29)
 a<-scan()
hist(a)
### Confidence Interval###
#Package for CI
install.packages("gmodels")
library(gmodels)

#Data
install.packages('nycflights13')
library(nycflights13)
#Loads the data from package 'nycflights13'
flg<-nycflights13::flights 
dep_delay<-flg$dep_delay
#to check NA values
is.na(dep_delay)

#Remove NA values
dep_delay1<-dep_delay[!is.na(dep_delay)]

#CI construction
ci(dep_delay1,confidence = 0.95)    
### if we include NA value w will get NA values##
ci(dep_delay,confidence = 0.95)

y<-flg$arr_delay
is.na(y)
sum(is.na(y))
z<-y[!is.na(y)]
ci(z,confidence = 0.95)
## to find 1-sample t test##
pt(2.23,79)
# for Z-test
pnorm()
## 2 tail t test##
2*pt(-1.414,49)
2*(1-pt(1.414,49))
pt(1.414,49)
1-0.91
2*pt(-0.471,49)
2*pt(-0,49)
2*pt(-0.94,49)
  ## Exercise###
x<-c(0.593,0.142,0.329,0.691,0.231,0.793,0.519,0.392,0.418)
t.test(x,alternative = "greater",mu=0.3)  # 1 tail test
summary(x)
mean(x)
sd(x)
var(x)
## 2 tail t test###
 Control = c( 91, 87, 99, 77, 88, 91)
 Treat = c( 101, 110, 103, 93, 99, 104)
 t.test (Control, Treat, alternative='two.sided')
t.test(x, y = NULL, alternative = c("two.sided", "less", "greater"), mu = 0, conf.level = 0.95)

 t.test (Control, Treat, alternative='two.sided')
 t.test(x, y = NULL, alternative = c("two.sided", "less", "greater"), mu = 0, conf.level = 0.95)
 
 
 ## Linear Regression##
 wcat<-read.csv("E:\\srinivas excelr\\WC_AT.csv")
 View(wcat)
 model<-lm(wcat$AT~.,data = wcat)
 summary(model)
 wc<-data.frame(Waist=c(40,70,200))
nw<-predict(model,newdata =wc) 
summary(nw)
