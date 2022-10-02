# Tutorial session 2:   data generation, data-splitting, subset selection and regularized regression 


#####   Basic R commands review 


# Generate random numbers 
# The symbol "="" can also be used in place of "<-" for assigning values.
# But the latter is recommended in R for better code readability.  

n <- 10
d <- 5
v <- rnorm(n)     # generate a n-dimensional vector containing i.i.d. samples of N(0, 1)
v <- rnorm(n, 1, sqrt(2))     # generate n i.i.d. samples of N(1, 2)
v <- rnorm(n, -1, 1)     # generate n i.i.d. samples of N(-1, 1)

M <- matrix(rnorm(n * d), nrow <- n, ncol <- d)   # generate a n by d matrix containing i.i.d. samples of N(0, 1)


# Review basic R operations such as  

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

# Review the data structure: data.frame and its basic operations such as indexing, 
# slicing, data.frame to matrix, matrix to data.frame etc. 






####### Chapter 5.3 Lab: Cross-validation 


# The Validation Set Approach

library(ISLR)
set.seed(1)

num_samples <- nrow(Auto)
train <- sample(num_samples,196)  ##create indexes for my training data

lm.fit <- lm(mpg~horsepower,data=Auto,subset=train)
attach(Auto)

mean((mpg-predict(lm.fit,Auto))[-train]^2)  #calculate MSE on the validation set

MSE <- function(y_pred, y){
  return(mean((y_pred-y)^2))
}
MSE(mpg[-train], predict(lm.fit,Auto[-train,]))

lm.fit2 <- lm(mpg~poly(horsepower,2),data=Auto,subset=train)
mean((mpg-predict(lm.fit2,Auto))[-train]^2) 
##could change to MSE function I wrote

lm.fit3 <- lm(mpg~poly(horsepower,3),data=Auto,subset=train)
mean((mpg-predict(lm.fit3,Auto))[-train]^2)

set.seed(2)
train <- sample(num_samples,196)

lm.fit <- lm(mpg~horsepower,subset=train)
mean((mpg-predict(lm.fit,Auto))[-train]^2)

lm.fit2 <- lm(mpg~poly(horsepower,2),data=Auto,subset=train)
mean((mpg-predict(lm.fit2,Auto))[-train]^2)

lm.fit3 <- lm(mpg~poly(horsepower,3),data=Auto,subset=train)
mean((mpg-predict(lm.fit3,Auto))[-train]^2)

# Leave-One-Out Cross-Validation

glm.fit <- glm(mpg~horsepower,data=Auto)
coef(glm.fit)

lm.fit <- lm(mpg~horsepower,data=Auto)
coef(lm.fit)

library(boot)   # the package for cross-validation under glm models

glm.fit <- glm(mpg~horsepower,data=Auto)
cv.err <- cv.glm(Auto,glm.fit)
cv.err$delta  # the first value is the one we covered in the lecture. 
#the second one is a bias corrected version (in the book by Davison, A.C. and Hinkley, D.V.).
#in many cases, they are very close.

cv.error <- rep(0,5)

for (i in 1:5){
 glm.fit <- glm(mpg~poly(horsepower,i),data=Auto)
 cv.error[i] <- cv.glm(Auto,glm.fit)$delta[1]
 }
cv.error
plot(cv.error)

# k-Fold Cross-Validation

set.seed(17)
cv.error.10 <- rep(0,10)
for (i in 1:10){
 glm.fit <- glm(mpg~poly(horsepower,i),data=Auto)
 cv.error.10[i] <- cv.glm(Auto,glm.fit,K=10)$delta[1]
 }
cv.error.10
plot(cv.error.10)





#####  Chapter 6.5 Lab 1: Subset Selection

library(ISLR)
dim(Hitters)
summary(Hitters)
sum(is.na(Hitters$Salary))  #how many samples have missing salary
Hitters <- na.omit(Hitters)    #create a data set with fully completely observed samples
dim(Hitters)
sum(is.na(Hitters))

library(leaps)   # package for performing subset selection
regfit.full <- regsubsets(Salary~.,Hitters) # best subset selection 
summary(regfit.full)

regfit.full <- regsubsets(Salary~.,data=Hitters,nvmax=19) #all subset selection with max # of variables=19
reg.summary <- summary(regfit.full)

names(reg.summary)
reg.summary$cp


par(mfrow=c(2,2))
plot(reg.summary$rss,xlab="Number of Variables",ylab="RSS",type="l")
plot(reg.summary$adjr2,xlab="Number of Variables",ylab="Adjusted RSq",type="l")
which.max(reg.summary$adjr2)
points(11,reg.summary$adjr2[11], col="red",cex=2,pch=20)
plot(reg.summary$cp,xlab="Number of Variables",ylab="Cp",type='l')
which.min(reg.summary$cp)
points(10,reg.summary$cp[10],col="red",cex=2,pch=20)
which.min(reg.summary$bic)
plot(reg.summary$bic,xlab="Number of Variables",ylab="BIC",type='l')
points(6,reg.summary$bic[6],col="red",cex=2,pch=20)


# Forward and Backward Stepwise Selection

regfit.fwd <- regsubsets(Salary~.,data=Hitters,nvmax=19,method="forward") 
summary(regfit.fwd)


regfit.bwd <- regsubsets(Salary~.,data=Hitters,nvmax=19,method="backward")
summary(regfit.bwd)

coef(regfit.full,7)  # coefficient of best subset selection with 7 variables
coef(regfit.fwd,7)
coef(regfit.bwd,7)



# Choosing Among Models by CV

set.seed(1)
train <- sample(c(TRUE,FALSE), nrow(Hitters),rep=TRUE) 
#you may also use train_index=sample(c(1:263),131) to create training data
test <- (!train)  

regfit.best <- regsubsets(Salary~.,data=Hitters[train,],nvmax=19)
test.mat <- model.matrix(Salary~.,data=Hitters[test,])   # create an X matrix of test data

val.errors <- rep(NA,19)
for(i in 1:19){
   coefi <- coef(regfit.best,id=i)
   pred <- test.mat[,names(coefi)]%*%coefi
   val.errors[i] <- mean((Hitters$Salary[test]-pred)^2)
}
val.errors
which.min(val.errors)
coef(regfit.best,10)

#you may also use k-fold cross-validation to select best model (see the textbook)  


#Compute AIC, BIC, adjusted R^2 in linear models and logistic regression

lm1 <- lm(Fertility ~ . , data <- swiss)
AIC(lm1)
BIC(lm1)
summary(lm1)$adj.r.squared

glm1 <- glm(Salary~.,data=Hitters)
AIC(glm1)
BIC(glm1)








##### Chapter 6.6 Lab 2: perform ridge regression and the Lasso

x <- model.matrix(Salary~., Hitters)[,-1]  #remove the intercept
y <- Hitters$Salary

# Ridge Regression

library(glmnet)  # the package for regularized linear regression

grid <- 10^seq(10,-2,length=100)   #create a grid for \lambda
ridge.mod <- glmnet(x,y,alpha=0,lambda=grid) #alpha=0 is the ridge penalty, alpha=1 is the lasso penalty

dim(coef(ridge.mod))

ridge.mod$lambda[50]
coef(ridge.mod)[,50]
sqrt(sum(coef(ridge.mod)[-1,50]^2))  #calculuate L2 norm of beta

ridge.mod$lambda[60]
coef(ridge.mod)[,60]
sqrt(sum(coef(ridge.mod)[-1,60]^2)) #As we decrease lambda, L_2 norm of beta increase 

##in pracice, we just need to do the following. 
set.seed(1)
cv.out <- cv.glmnet(x,y,alpha=0) #10 fold cross validation, you can also add lambda=grid
bestlam <- cv.out$lambda.min
bestlam
ridge.mod <- glmnet(x,y,alpha=0,lambda=bestlam)
coef(ridge.mod)[,1]

pred.ridge <- predict(ridge.mod, s <- bestlam, newx <- x)


# The Lasso

set.seed(1)
cv.out <- cv.glmnet(x,y,alpha=1) #10 fold cross validation
bestlam <- cv.out$lambda.min
bestlam
lasso.mod <- glmnet(x,y,alpha=1,lambda=bestlam)
lasso.coef <- coef(lasso.mod)[,1]
lasso.coef[lasso.coef!=0]

pred.lasso <- predict(lasso.mod, s <- bestlam, newx <- x)
pred.lasso

index_boggs <- which(names(pred.lasso[,1])=="-Wade Boggs")

c(pred.lasso[index_boggs], pred.ridge[index_boggs])





