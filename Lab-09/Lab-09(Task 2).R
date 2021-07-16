func <- function(x,y)
{
  func1 <- x + 3*y
}
ModifiedEuler <- function (x0, y0, h, n )
{
  x <- x0
  y <- y0
  
  for ( i in 1 : n )
  {
    s1 <- h * func ( x0, y0 )
    s2 <- h * func ( x0+h/2, y0+s1/2 )
    y0 <- y0 + s2
    x0 <- x0 + h
    x <- c ( x, x0 )
    y <- c ( y, y0 )
  }
  
  return ( data.frame ( x = x, y = y ) )
}

ModifiedEuler(0,1,0.1,1)