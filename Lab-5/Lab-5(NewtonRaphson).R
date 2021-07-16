require(numDeriv)
func <- function(x)
{
  x^2 - 10*cos(x)
}
## f is the given function
## x0 is the initial value
NewtonRaphson <- function(f,x0)
{
  xfinal <- vector()
  for (i in 1:100)
  {
    ##calculate derivative
    ##greaD(1st), genD(use 1st and 2nd derivative(default))
    ##dx <- graD(func=f,x=x0)
    dx <- genD(func = f,x=x0)$D[1]
    xfinal[i] <- x0 - (f(x0)/dx)
    ea <- abs(xfinal[i]-x0)
    result <- cbind(iteration = i,final=xfinal[i],error=ea)
    print(result)
    if(length(ea)==0)
    {
      next
    }
    if (ea==0)
    {
      break
    }
    x0 <- xfinal[i]
  }
  
}