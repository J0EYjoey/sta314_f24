######################################################################
#####						Tutorial 1  						######
######################################################################

#####   Go over some of the basic commands in Chapter 2.3. 



#####   Linear Regression 

rm(list=ls())# remove all variables in memory
library(MASS)
library(ISLR)

# Simple Linear Regression

names(Boston)
lm.fit=lm(medv~lstat) ##error because we did not specify the data set
lm.fit=lm(medv~lstat,data=Boston) 

attach(Boston) #we can use the alternative approach
lm.fit=lm(medv~lstat)

lm.fit
summary(lm.fit)

coef(lm.fit)
lm.fit$coefficients
lm.fit$fitted.values
?lm  #use help to learn what is the input and output of lm

confint(lm.fit) #confidence interval for regression coefficient
predict(lm.fit,data.frame(lstat=(c(5,10,15))), interval="confidence")  #CI for fitted values
predict(lm.fit,data.frame(lstat=(c(5,10,15))), interval="prediction")  # prediction interval for Y

plot(lstat,medv)
abline(lm.fit)
abline(lm.fit,lwd=3)  #lwd represents the line width
abline(lm.fit,lwd=3,col="red")
plot(lstat,medv,col="red")
plot(lstat,medv,pch=20) #plot using different symbols
plot(lstat,medv,pch="+")
plot(1:20,1:20,pch=1:20)

par(mfrow=c(2,2)) # create 2 by 2 plot
plot(lm.fit)
plot(predict(lm.fit), residuals(lm.fit))
plot(predict(lm.fit), rstudent(lm.fit))  #studentized residuals


# Multiple Linear Regression

lm.fit=lm(medv~lstat+age,data=Boston)
summary(lm.fit)
lm.fit=lm(medv~.,data=Boston)
summary(lm.fit)


library(car)

lm.fit1=lm(medv~.-age,data=Boston) #use all predictors except age
summary(lm.fit1)

# Interaction Terms

summary(lm(medv~lstat*age,data=Boston)) #automatically include the main effect lstat and age
summary(lm(medv~lstat+age+lstat:age,data=Boston)) #an alternative approach

# Non-linear Transformations of the Predictors
lstat2=lstat^2

lm.fit2=lm(medv~lstat+lstat2)
summary(lm.fit2)
lm.fit2=lm(medv~lstat+lstat^2) #not right, it does not include the quadratic form of lstat
summary(lm.fit2)

lm.fit2=lm(medv~lstat+I(lstat^2))
summary(lm.fit2)

lm.fit5=lm(medv~poly(lstat,5)) #include the polynomial of lstat upto order 5
summary(lm.fit5)
summary(lm(medv~log(rm),data=Boston))

# Qualitative Predictors

names(Carseats)
summary(Carseats)
lm.fit=lm(Sales~.+Income:Advertising+Price:Age,data=Carseats)
summary(lm.fit)


