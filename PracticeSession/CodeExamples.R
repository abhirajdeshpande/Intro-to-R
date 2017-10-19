# Scalar
4 + 6

x <- 4
y <- 6
z <- x + y
z

ls()

sqrt(16)

rm(x,y)

# Vectors
z <- c(5,9,1,0)

x <- c(5,9)
y <- c(1,0)
z <- c(x,y)
z

x <- 1:10
x

seq(1,9,by=2)
seq(1,10,by=2)

seq(8,20,length=6)

rep(0,100)
rep(1:3,6)
rep(1:3,c(6,6,6))
rep(1:3,rep(6,3))

#=============================
# Summaries and subscripting
x<-c(7.5,8.2,3.1,5.6,8.2,9.3,6.5,7.0,9.3,1.2,14.5,6.2)

mean(x)
var(x)
summary(x)

x[1:6]
x[-(1:6)]


#=============================
# Matrices
x<-c(5,7,9)
y<-c(6,3,4)
z<-cbind(x,y)
z

dim(z) #Dimension

rbind(z,z)

z<-matrix(c(5,7,9,6,3,4),nrow=3)
z

z<-matrix(c(5,7,9,6,3,4),nr=3,byrow=T)
z

y<-matrix(c(1,3,0,9,5,-1),nrow=3,byrow=T)
y

y+z # Matrix addition

y*z # Component wise multiplication

x<-matrix(c(3,4,-2,6),nrow=2,byrow=T)
x

y%*%x # Matrix multiplication

t(z) # Transpose

solve(x) # Calculate inverse



#=============================
# Attaching objects
data()

data("trees")

trees[1:5,]

attach(trees)

mean(Height)

mean(trees[,2])

trees$Height



#=============================
# apply function
apply(trees,1,mean)



#=============================
# Statistical computation
dnorm(5,3,4) #evaluates the density 
            # of the N(3, 4) distribution at x = 5.

x<-seq(-5,10,by=.1)
dnorm(x,3,2)


#=============================
# Graphics
par(mfrow=c(2,2)) # creates a window of graphics with 
                  # 2 rows and 2 columns
hist(Height)
boxplot(Height)
hist(Volume)
boxplot(Volume)
par(mfrow=c(1,1)) # Restores 1 by 1 layout

plot(Height,Volume)

pairs(trees)


#=============================
# Writing functions
sd <- function(x) sqrt(var(x))
x<-c(9,5,2,3,7)
sd(x)

# Copy this before the next line
function(x){
  par(mfrow=c(3,1))
  hist(x[,1])
  hist(x[,2])
  plot(x[,1],x[,2])
  par(mfrow=c(1,1))
  apply(x,2,summary)
}

fix(several.plots) # Function editor

fix(several.plots) # Function editor

data(faithful)
several.plots(faithful)



#=============================
# Other things...
library()

library(ggplot2)
