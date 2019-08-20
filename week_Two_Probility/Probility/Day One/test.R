bb=80
for(i in 1:100){
	a=mean(rbinom(10000,100,0.8))
	bb=cbind(bb,a)
}
hist(bb)
