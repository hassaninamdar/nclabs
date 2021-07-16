##define the matrix
A <- matrix(c(-8,1,-2,-20,2,-6,-1,-38,-3,-1,7,-34),3,4,byrow=T)
GaussForward <- function(A)
{
  #calculating number and columns
  n <- nrow(A)
  m <- ncol(A)
  for(i in 1:n)
  {
    A[i,] <- A[i,]/A[i,i]
    print(A)
    if(i == n) break()
    A[(i+1):n,i:m] <- A[(i+1):n,i:m] -outer(A[(i+1):n,i],A[i,i:m])
    ##i = 1
    ##A[2,1:4] <- A[2,1:4] - outer(A[2,1],A[1,1:4])
    ##A[3,1:4] <- A[3,1:4] - outer(A[3,1],A[1,1:4])
    print(A)
  }
  return(A)
}

GaussBackward <- function(A)
{
  n <- nrow(A)
  m <- ncol(A)
  x <- matrix(nrow =3,ncol = 1)
  x[n,] <- A[n,m]/A[n,m-1]
  #print(n)
  for (i in (n-1):1)
  {
    x[i] <- A[i,m]
    print("mu")
    print(x[i])
    for (j in (i+1):(n))
    {
      print(x[j])
      x[i] <- x[i] - A[i,j]*x[j]
    }
  }
  print(x)
}