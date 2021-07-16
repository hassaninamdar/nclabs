
A <- matrix(c(-8,1-2.-20,2,-6,-1,-38,-3,-1,7,-34),3,4,byrow=T)

GuassJordan <- function(A) 
{
  m <- nrow(A)
  n <- ncol(A)
  current_col <- 1
  nonZeroRow <- 0
  
  while ( (current_col < n+1) & (nonZeroRow+1 <= m) ){
    if (sum(A[(nonZeroRow+1):m, current_col]) == 0) {
      current_col <- current_col + 1
    } else {
      row <- 0
      for (i in nonZeroRow+1:m) {
        if (A[i,current_col] != 0) {
          row <- i
          break()
        }
      }
      nonZeroRow <- nonZeroRow + 1
  
      R1 <- A[row,]
      R2 <- A[nonZeroRow,]
      A[row,] <- R2
      A[nonZeroRow,] <- R1
      A[nonZeroRow,] <- (1/A[nonZeroRow,current_col]) * A[nonZeroRow,]
      
      for (k in 1:m) {
        if ( (A[k, current_col] != 0) & (k != nonZeroRow) ) {
          x <- A[k, current_col] / A[nonZeroRow, current_col] 
          A[k, ] <- -1 * x * A[nonZeroRow, ] + A[k, ]
          print(A)
        }
      }
      current_col <- current_col + 1
    }
  
  }
  return(A)
}
