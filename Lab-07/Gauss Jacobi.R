require(Rlinsolve)
A <- matrix(c(6,-2,1,1,2,-5,-2,7,2),3,3,byrow=T)
B <- matrix(c(11,-1,5),3,1,byrow=F)
n <- nrow(A)
result <- matrix(nrow = 3, ncol = 1)

##make system diagonally dominant
for(i in 1:n)
{
  ##extract absolute value of each row
  r <- abs(A[i,])
  z <- sum(r) - r[i]
  if (r[i] <= z)
  {
    temp <- A[i,]
    A[i,] <- A[i+1,]
    A[i+1,] <- temp
    temp2 <- B[i,]
    B[i,] <- B[i+1,]
    B[i+1,] <- temp2
    
  }
}

result <- lsolve.jacobi(A,B)
print(result)