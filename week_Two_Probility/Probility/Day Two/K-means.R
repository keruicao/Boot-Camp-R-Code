library(cluster)
library(fpc)

set.seed(2019)

x1=rnorm(100,10,5)
y1=rnorm(100,10,5)

x2=rnorm(100,20,5)
y2=rnorm(100,20,5)

x3=rnorm(100,10,5)
y3=rnorm(100,20,5)

plot(x1,y1,col="red",xlim=c(0,30),ylim=c(0,20))
points(x2,y2,col="blue")
points(x3,y3,col="green")

x=c(x1,x2,x3)
y=c(y1,y2,y3)
plot(x,y,xlim=c(0,30),ylim=c(0,20))

dim(x)=c(300,1)
dim(y)=c(300,1)

df=cbind(x,y)

colnames(df)=c('x','y')

set.seed(2019)

wss=function(k){
  kmeans(df,k)$tot.withinss
}

k.values=1:15
w=NULL

for (i in k.values) {
  w=c(w,wss(i))
}

plot(k.values,w,type='b',pch=33,xlab='number of clusters')
