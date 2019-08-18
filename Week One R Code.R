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
