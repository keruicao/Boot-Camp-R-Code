#1
A=matrix(c(1,5,-2,1,2,-1,3,6,-3),ncol=3)
A%*%A%*%A
A=cbind(A,A[,2]+A[,3])
A=A[,-3]

#2
a=cbind(rep(10,15),rep(-10,15),rep(10,15))
t(a)%*%a

#3
aa=matrix(c(0,1,0,0,0,0,1,0,1,0,0,0,0,1,0,1,0,0,0,0,1,0,1,0,0,0,0,1,0,1,0,0,0,0,1,0),ncol=6)
aa
row(aa)
col(aa)
aa=matrix(rep(1,36),ncol=6)
aa=col(aa)-row(aa)
aa
#4
b=matrix(c(0,1,2,3,4,1,2,3,4,5,2,3,4,5,6,3,4,5,6,7,4,5,6,7,8),ncol=5)
?outer
