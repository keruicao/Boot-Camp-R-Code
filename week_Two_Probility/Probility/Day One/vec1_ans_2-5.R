
sink("vec_solns_2-5.out")

cat("These solutions of last Tuesday's \n")
cat("programming exerices R will give you an template for\n") 
cat("using R from the command line to produce simple output.\n\n")


cat("2. Create a vector of the values of exp(x)cos(x) at x = 3, 3.1, 3.2, ..., 6.\n\n")
cat("Answer:\n")

cat("
tmp <- seq(3,6,by=0.1)
 
ans <- exp(tmp)*cos(tmp)
\n")


tmp <- seq(3,6,by=0.1)

ans <- exp(tmp)*cos(tmp)

cat(sprintf("The answer vector has %d elements:\n", length(ans)))
cat("Here are the first 15 values of the answer.\n")
head(ans, n=14)

cat("----------------------------------------------\n\n")


cat("3. Create the following vectors: \n")

cat("(a) (0.1^3)(0.2^1), (0.1^6)(0.2^4), ..., (0.1^36)(0.2^34)\n\n")

cat("Answer:\n")
cat("(0.1^seq(3,36,by=3))*(0.2^seq(1,34,by=3))\n")

ans <- (0.1^seq(3,36,by=3))*(0.2^seq(1,34,by=3))
ans
cat("\n\n")

cat("(b)  (2, (2^2/2), (2^3/3), . . ., (2^25/25))\n\n")


cat("Answer:\n\n")

cat("(2^(1:25))/(1:25)\n\n")
(2^(1:25))/(1:25)

cat("-----------------------------------------------\n\n")

cat("4. Calculate the following:\n\n")

cat("(a)  sum(i in (10:100), (i^3 + 4i^2)\n")
cat("Answer:\n\n")
cat("tmp <- 10:100
sum(tmp^3+4*tmp^2)\n\n")

tmp <- 10:100
sum(tmp^3+4*tmp^2)
cat("\n\n")

cat(sprintf("(b)  sum(i in (1:25), (2^i/i  +  3^i/i^2)\n"))
cat("Answer:\n")

tmp <- 1:25
ans <- sum((2^tmp)/tmp + 3^tmp/(tmp^2))

cat(sprintf("tmp <- 1:25
sum((2^tmp)/tmp + 3^tmp/(tmp^2)) = %f\n\n", ans))


cat("-----------------------------------------------\n\n")

cat("5. Use the function paste to create the following character vectors of length 30:\n\n")
cat("(a) (\"label 1\", \"label 2\", ....., \"label 30\").\n\n")
cat("Note that there is a single space between label and the number following.\n\n")


cat("Answer:\n\n")    

## cat("paste(\"label\", 1:30)\n\n")

paste("label", 1:30)

cat("\n\n")

cat("(b) (\"fn1\", \"fn2\", ..., \"fn30\").\n\n")
cat("In this case, there is no space between fn and the number following.\n\n")

cat("Answer\n\n")

## cat("paste("fn", 1:30,sep="")\n\n")


paste("fn", 1:30,sep="")



sink()
