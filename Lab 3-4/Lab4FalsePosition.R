##False Position Method
myFunc <- function(x)
{
  c <- 5*x^3 - 5*x^2 + 6*x -2
  returnValue(c)
}

FalsePosition <- function(x1,x2)
{
  x <- 0
  ##f(x1)
  c <- 5*x^3 - 5*x^2 + 6*x -2
  x3 <- vector()
  for(i in 1:20)
  {
    x3[i] <- x2 -((myFunc(x2)*(x1-x2))/(myFunc(x1)-myFunc(x2)))
    ##f(x3)
    y <- 5*x3[i]^3 - 5*x3[i]^2 + 6*x3[i] -2
    if(c*y < 0)
    {
      x2 <- x3[i]
    }
    else if (c*y >0)
    {
      x1 <- x3[i]
    }
    ##calculating error
    absoluteerror <- abs(x3[i]-x3[i-1])
    ea <- (absoluteerror/x3[i])*100
    result <- cbind(iteration = i,mid =x3[i],error = ea)
    print(result)
    ##Stoping criteria
    if(length(ea)== 0 )
    {
      next
    }
    if(ea < 10)
    {
      break
    }
  }
}