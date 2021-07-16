x <- 1
print(x)
msg <- 'hello'
print(msg)

x <- 5
print(x)

x <- -1:20
print(x)

x <- c(0.5,0.6)
print(x)
x <- c(TRUE,FALSE)
print(x)
x <- c(T,F)
print(x)
x <- c('a', 'b', 'c')
print(x)
x <- 9:29
print(x)
x <- c(1+0i,2+4i) 
print(x)


x <- vector('numeric', length = 10)
print(x)

y <- c(1.5, 'a')
print(y)
y <- c(TRUE,2)
print(y)
y <- c('a', TRUE) 
print(y)

x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)
as.complex(x)

x<-c('a','b','c')
as.numeric(x)

as.logical(x)

m <- matrix(nrow = 2, ncol = 3)
print(m)

dim(m)
attributes(m)


m <- matrix(1:6,nrow = 2, ncol = 3)
print(m)
m <- matrix(1:6,nrow = 3, ncol = 2)
print(m)


m <- 1:10
print(m)

dim(m) <- c(2,5)
print(m)

m <- 1:25
dim(m) <- c(5,5)
print(m)

x <- 1:3
y <- 10:12
cbind(x,y)
rbind(x,y)
