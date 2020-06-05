G<-TRUE
class(G)
f<-23.5
class(f)
v<-c('green',1,4)
v
class(v)
s<-2L
class(s)
d<- c(1,2L,5,TRUE)
class(d)
#### list ####
list<-list(c(1,2,3,"GOOD",23.5,sin))
list
### matrix##
m<- matrix(c(1,2,3,4,5,6),nrow = 3,ncol = 4,byrow = TRUE)
print(m)
m<-matrix(c("a","b","c"),nrow = 3,ncol=4,byrow= TRUE)
M = matrix( c("a","a","b","c","b","a"), nrow = 2, ncol = 3, byrow = TRUE)
print(M)
 ## Arrays###
a<-array(c("apple","orange","mango"),dim = c(3,3,2))
print(a)
#### Factors
apple_colors<-c("green","red","yellow")
apple_factor<-factor(apple_colors)
print(apple_colors)
x<-nlevels(apple_factor)
class(apple_factor)
class(x)
########Data frame###
BM<-data.frame(name<-c("sweta","padma","dalai"),age<-c(21,23,34),gender<-c("female","male","female"),height<-c(124,156,123.5))
print(BM)
table(BM)
length(BM)
names(BM)
df<-data.frame(x=1:4,y=c("a","b","c","d"))
df1<-data.frame(height=c(150,156),weight=c(67,65),name=c("s","d"))
nrow(df1)
ncol(df1)
dim(df1)
summary(df1)
df1$height
df[1,1]
df[1:2,2]
df[c(1,2),2]
#1,a
df[1,c(1,2)]
df[c(1,3),1]
df[1,]
df[c([1, ],[3,])]
df[3,2]
df[c(2,3),1]
df[3,c(1,2)]
df2<-c(df[c(1,3),1],df[3,c(1,2)])
table(df2)
df[c(1,3),]
###Descriptive Statistics##
## to check in built datasets available  in r
datasets::#
  library(datasets)
data("airquality")
airquality
airquality<-datasets::airquality
head(airquality)
head(airquality,20)
tail(airquality)
tail(airquality,10)
airquality[,c(1,2)]
airquality$Ozone
summary(airquality)
summary(airquality$Temp)
plot(airquality)
plot(airquality)
boxplot(airquality)
plot(airquality$Ozone,airquality$Temp)
##lines and points
plot(airquality$Ozone,type = "b") #  b stands for both(circles (points as p)and lines(l))
colnames(airquality)
plot(airquality$Ozone,xlab = 'Concentration',ylab = 'Instances',main = "ozone")
 # points and lines 
  plot(airquality$Ozone, type= "b") # p: points, l: lines,b: both

plot(airquality$Ozone, xlab = 'ozone Concentration', 
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')
 # Horizontal bar plot
  barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
          xlab = 'ozone levels', col= 'blue',horiz = F)
hist(airquality$Solar.R)
hist(airquality$Solar.R, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')
 #Single box plot
  boxplot(airquality$Solar.R)

# Multiple box plots
boxplot(airquality[,1:4], 
        main='Multiple')
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=1, bty="n")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

x<-list(11,23,1,8,7)
x[lapply(x,"%%",2)==0]
## creating data frame##  
sweta<-data.frame(
  name=c("sweta","padma","dalai"),
  age=c(23,43,24),
  address=c("scd","xyd","rytt"),
  phn=c(1233334,4555,5555)
)
sweta
table(sweta$name,sweta$age)
sweta$name
is(sweta)
print(is(sweta))
## creating matrices
matrix<-matrix(c(1,2,34,5,6,8),nrow=3,ncol=2,byrow=TRUE)
matrix      
array<-array(c(1,2,3,5,7),dim = c(3,3,2))
x<-c(1,2,3,5)
x[8]<-19

x[1:3]
## input data
mydata<-data.frame(age=numeric(0),
                   gender=character(0),
                   weight=numeric(0)
  
)
mydata<-edit(mydata)
