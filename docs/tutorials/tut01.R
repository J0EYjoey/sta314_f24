###### Tutorial session 1: Basic R commands review 


### Review basic R operations such as  

M <- matrix(c(3,2,1,2,3,2,1,2,3),nrow=3,ncol=3)
v <- c(2,4,6)

Mprod <- M %*% v      
Dprod <- M * v        
M_tran <- t(M)
v_sum <- sum(v)
v_avg <- mean(v) 
v_abs <- abs(v)
v_sq <- v ** 2   # v^2 does the same thing

v_ell_2 <- sqrt(sum(v ** 2))


# solve x from y <- Ax 

x_var <- rnorm(10)
A_matr <- matrix(rnorm(100), nrow=10, ncol=10, byrow=TRUE)

y_1 <- A_matr %*% x_var
y_2 <- A_matr %*% x_var + rnorm(10) #adding noise, but centered around 0 so unbiased
y_3 <- A_matr %*% x_var + rgamma(10, shape=1, rate=2) #strictly positive noise, biased

x_sol <- solve(A_matr, y_1)
x_sol2 <- solve(A_matr, y_2)
x_sol3 <- solve(A_matr, y_3)
max(abs(x_sol-x_var))
max(abs(x_sol2-x_var))
max(abs(x_sol3-x_var))



### Review the data structure: data.frame and its basic operations such as indexing, 
### slicing, data.frame to matrix, matrix to data.frame etc. 


A <- matrix(1:16, 4, 4)

A[2,4]
A[2,]
A[,4] 

A[c(2,3), c(3,4)]
A[2:3, 3:4]
A[1:3, 2:4]

B <- rbind(A, 1:4)
C <- cbind(A, 1:4)

diag(A)

data_A <- data.frame(A)
data_A 

as.matrix(data_A)



### Generate random numbers 
# The symbol "="" can also be used in place of "<-" for assigning values.
# But the latter is recommended in R for better code readability.  

n <- 10
d <- 5
v <- rnorm(n)     # generate a n-dimensional vector containing i.i.d. samples of N(0, 1)
v <- rnorm(n, 1, sqrt(2))     # generate n i.i.d. samples of N(1, 2)
v <- rnorm(n, -1, 1)     # generate n i.i.d. samples of N(-1, 1)

M <- matrix(rnorm(n * d), nrow <- n, ncol <- d)   # generate a n by d matrix containing i.i.d. samples of N(0, 1)


### Discuss the usage of set.seed()

# check out the outputs
cat(rnorm(5), "\n")
cat(rnorm(5), "\n")


# what about the following
set.seed(0)
cat(rnorm(5), "\n")

set.seed(0)
cat(rnorm(5), "\n")


# what if we simulate twice under a seed

set.seed(0)
cat(rnorm(5), "\n")
cat(rnorm(5), "\n")

set.seed(0)
cat(rnorm(5), "\n")
cat(rnorm(5), "\n")


### Plot the data, summary(), as.factor(), hist(), pairs()

library(ISLR2)
?Auto

summary(Auto)
plot(Auto$cylinders, Auto$mpg) 


# change a numeric vector to a vector of factors
Auto$cylinders <- as.factor(Auto$cylinders)
summary(Auto)
plot(Auto$cylinders, Auto$mpg, col = "red", varwidth = T, xlab = "cylinders", ylab = "MPG")

# draw histogram
hist(Auto$mpg, col = 2, breaks = 15) 

# The pairs() function draws scatterplot matrix

pairs(Auto)
pairs(~ mpg+ displacement + horsepower + weight, Auto)


