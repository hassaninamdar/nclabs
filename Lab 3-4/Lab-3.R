x <- list(1,"a",TRUE,1+4i)
print(x)

x <- factor(c("yes","yes","no","yes","no"))
print(x)

table(x)

unclass(x)

x <- factor(c("yes","yes","no","yes","no"), levels = c("yes","no"))
print(x)

x <- data.frame(foo = 1:4, bar = c(T,T,F,F))
print(x)

nrow(x)
ncol(x)


##This is a valid if structure
x <- 4
if (x>3)
{
  y <-10
}else
{
  y<-0
}
print(y)

if(x>3)
{
  10
}
else
{
  0
}


##For loop structure
for(i in 1:10)
{
  print(i)
}

##These three loops have the same behaviour
x<-c("a","b","c","d")
for(i in 1:4)
{
  print(x[i])
}

for(i in seq_along(x))
{
  print(x[i])
}

for(letter in x)
{
  print(letter)
}


for(i in 1:4) print(x[i])

##Nested for loops
x<-matrix(1:6,2,3)
for(i in seq_len(nrow(x)))
{
  for(j in seq_len(ncol(x)))
  {
    print(x[i,j])
  }
}


##While loop
count<-0
while(count<10){
  print(count)
  count<-count+1
}



##Repeat
x0<-1
tol<-1e-8
repeat{
  x1<-ComputeEstimate()
  if(abs(x1-x0) < tol) {
    break
  } else {
    x0 <- x1
  }
}



##Next,return
For(i in 1:100){
  If(i<=20){
    ##skip first 20 iterations
    Next
  }
  ##do something here
}


