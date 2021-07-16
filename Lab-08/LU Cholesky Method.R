A <- matrix(c(6,15,55,15,55,225,55,225,979),3,3,byrow=T)
B <- matrix(c(152.6,585.6,2488.8),3,1,byrow=F)
l <- matrix(0,nrow=3,ncol=3)
n <- nrow(A)

##calculating l11
l[1,1] <- sqrt(A[1,1])
print(l)

##calculating l21,l31
for (i in 2:n)
{
  l[i,1] <- A[i,1]/l[1,1]
}
##calculating l22,l32
for (j in 2:n)
{
  l[j,j] <- sqrt(A[j,j]-(l[j,j-1]*l[j,j-1]))
  l[(j:n),j] <- (A[j:n,j] - (l[j,j-1]*l[j:n,j-1]))/l[j,j]
}
##calculating l33
l[n,n] <- sqrt(A[n,n] - (l[n,n-2]*l[n,n-2])-(l[n,n-1]*l[n,n-1]))

u <- t(l)

print(l)
print(u)

##forward substitution
##LY = B
n <- nrow(l)
m <- ncol(l)
y <- matrix(nrow =3,ncol = 1)
y[1,] <- B[1]/l[1,1]
for (i in 2:(n))
{
  y[i] <- B[i]
 for (j in 1:(i-1))
  {
   y[i] <- y[i] - l[i,j]*y[j]
  }
  y[i] = y[i]/l[i,i]
}
print(y)


## backward substitution
## UX = Y
n <- nrow(u)
m <- ncol(u)
x <- matrix(nrow =3,ncol = 1)
x[n,] <- y[m]/u[n,m]
for (i in (n-1):1)
{
  x[i] <- y[i]
  for (j in (i+1):(n))
  {
    x[i] <- x[i] - u[i,j]*x[j]
  }
  x[i] = x[i]/u[i,i]
}
print(x)
