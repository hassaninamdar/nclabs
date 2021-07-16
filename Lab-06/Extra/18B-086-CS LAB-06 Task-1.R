
A <- matrix(c(-8,1-2.-20,2,-6,-1,-38,-3,-1,7,-34),3,4,byrow=T)

GuassForward <- function(A)
{
  n <- nrow(A)
  m <- ncol(A)
  for (i in 1:n)
  {
    A[i,] <- A[i,]/A[i,i]
    print(A)
    if (i==n) break()
    A[(i+1):n,i:m] <- A[(i+1):n,i:m] - outer(A[(i+1):n,i],A[i,i:m])
    print(A)
  }
  return (A)
}

GuassBackward <- function(A)
{
  n <- nrow(A)
  m <- ncol(A)
  x3 <- A[n,m]/A[n,m-1]
}
