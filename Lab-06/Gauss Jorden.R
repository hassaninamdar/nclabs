Rref <- function(A)
{
  n <- nrow(A)
  m <- ncol(A)
  pivot <- 1  # non-zero entry in matrix - principle diagonal
  
  for(r in 1:n)
  {
    if (m <= pivot) break;
    i <- r
    while (A[i,pivot] == 0)
    {
      i <- i + 1
      if (n == i)
      {
        i <- r
        pivot <- pivot + 1
        if (m == pivot)
        {
          return(A)
        }
      }
    }
    
    #  swapping values
    prow <- A[i,]
    A[i,] <- A[r,]
    A[r,] <- prow
    A[r,] <- A[r,] / A[r,pivot]
    for (i in 1:n)
    {
      if (i != r)
        A[i,] <- A[i,] - A[r,] * A[i,pivot]
    }
    pivot <- pivot + 1
  }
  return(A)
}

GaussJordan <- function(A)
{
  n <- nrow(A)
  m <- ncol(A)
  x <- matrix(nrow = 3, ncol = 1)
  
  x[n,] <- A[n,m]/A[n,m-1]
  x[n-1,] <- A[n-1,m]/A[n-1,m-2]
  x[n-2,] <- A[n-2,m]/A[n-2,m-3]
  
  print(x)
  
}
