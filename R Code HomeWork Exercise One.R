#1
a=1:20
b=20:1
c=c(1:19,20:1)
d=c(4,6,3)
e=rep(d,10)
f=rep(e,len=31)
g=rep(d,c(10,20,30))
#2
fx=function(x)exp(x)*cos(x)
do=seq(3,6,0.1)
fi=sapply(do,fx)
#3
upp1=seq(3,36,3)
upp2=upp1-2
fx1=function(x)0.1^x
fx2=function(x)0.2^x
resl=sapply(upp1,fx1)*sapply(upp2,fx2)
#4
four=sum(sapply(10:100,function(x)x^3+4*x^2))
#5
a = paste("label",1:30,sep = " ")
b = paste("fn",1:30,sep = "")
#6
set.seed(50)
xVec = sample(0:999,250,replace = T)
yVec = sample(0:999,250,replace = T)
##a
x=xVec[-length(xVec)]
y=yVec[-1]
a6=y-x
xx=xVec[-1]
yy=yVec[-length(yVec)]
b6=sin(yy)/cos(xx)
xc1=xVec[-1]
xc2=xVec[c(-1,-2)]
c6=xVec+2*xc1-xc2
c6=c6[c(-length(c6),-(length(c6)-1))]
xu=xVec[-1]
d6=sum(exp(-xu)/(xVec+10)[-length(xVec)])
a7=xVec[xVec>600]
b7=which(xVec>600)
c7=xVec[c(which(yVec>600))]
mn=mean(xVec)
d7=sapply(xVec, function(x)abs(x-mn)^0.5)
e7=sort(xVec,decreasing=T)[1:200]
f7=xVec[xVec%%2==0]
x=cbind(xVec,yVec)
x=x[order(x[,2]),]
g7=x[,1]
h7=yVec[c(seq(1,250,3))]
#8
a8=sum(cumprod(c(1,seq(2,38,2))/c(seq(1,39,2))))
a8
