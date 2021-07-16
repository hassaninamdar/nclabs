func <- function(x,y)
{
  func1 <- (-5*y) + 5*x^2 + 2*x
}


Euler <- function (x0, y0, h, n )
{
  x <- x0
  y <- y0
  
  for ( i in 1 : n )
  {
    y0 <- y0 + h * func ( x0, y0 )
    x0 <- x0 + h
    x <- c ( x, x0 )
    y <- c ( y, y0 )
  }
  
  return ( data.frame ( x = x, y = y ) )
}


Euler(0, 1/3, 0.1 ,10)