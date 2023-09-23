#### 	Chapter 3 Lab: Linear Regression

rm(list=ls())# remove all variables in memory
## install.packages("...")
library(MASS)
library(ISLR)

###  Simple Linear Regression

#Data regarding city of Boston: ?Boston for more information

names(Boston) #what columns (predictors) we have
#medv is median value of owner-occupied homes in thousands
#lstat is lower status of the population
lm.fit=lm(medv~lstat) ##error because we did not specify the data set
#need to specify data set, hover over function to see arguments
lm.fit=lm(medv~lstat,data=Boston) 

attach(Boston) #we can use the alternative approach
#if data is attached, then no issue
lm.fit=lm(medv~lstat)

lm.fit #very simple summary
summary(lm.fit) #a more in depth summary of the model

#two ways to check coefficients
coef(lm.fit)
lm.fit$coefficients

lm.fit$fitted.values #what the fits are
?lm  #use help to learn what is the input and output of lm

confint(lm.fit) #confidence interval for regression coefficient
predict(lm.fit,data.frame(lstat=(c(5,10,15))), interval="confidence")  #CI for fitted values
predict(lm.fit,data.frame(lstat=(c(5,10,15))), interval="prediction")  # prediction interval for Y

plot(lstat,medv)
abline(lm.fit) #add our estimated model
abline(lm.fit,lwd=3)  #lwd represents the line width
abline(lm.fit,lwd=3,col="red")
#what do you notice about the data and/or the fit

plot(lstat,medv,col="red")
plot(lstat,medv,pch=20) #plot using different symbols
plot(lstat,medv,pch="+")
plot(1:20,1:20,pch=1:20) #what the different sympols are in pch

par(mfrow=c(2,2)) # create 2 by 2 plot
plot(lm.fit) #very detailed figures for model fit
plot(predict(lm.fit), residuals(lm.fit))
plot(predict(lm.fit), rstudent(lm.fit))  #studentized residuals

###  Multiple Linear Regression

lm.fit=lm(medv~lstat+age,data=Boston)
summary(lm.fit)
lm.fit=lm(medv~.,data=Boston) #all covariates
summary(lm.fit)
#note the change in model with more covariates

library(car)

lm.fit1=lm(medv~.-age,data=Boston) #use all predictors except age
summary(lm.fit1)



###	 Interaction Terms

# review the interpretation of coefficients when using interaction terms
summary(lm(medv~lstat*age,data=Boston)) #automatically include the main effect lstat and age
summary(lm(medv~lstat+age+lstat:age,data=Boston)) #an alternative approach



###  Non-linear Transformations of the Predictors
lstat2=lstat^2

lm.fit2=lm(medv~lstat+lstat2) #write out what the model looks like if possible (or show in summary/coefs)
summary(lm.fit2)
lm.fit2=lm(medv~lstat+lstat^2) #not right, it does not include the quadratic form of lstat
# provides the main effect and second order effect, but not lstat plus lstat - squared
summary(lm.fit2)

lm.fit2=lm(medv~lstat+I(lstat^2))	# notion of I() in R -- isolates (insulates) the effect
summary(lm.fit2)

lm.fit5=lm(medv~poly(lstat,5)) #include the polynomial of lstat upto order 5
summary(lm.fit5)
summary(lm(medv~log(rm),data=Boston))


###  Qualitative Predictors
#note the change now that we have non-continuous predictors, what do these represent?
names(Carseats)
summary(Carseats)
lm.fit=lm(Sales~.+Income:Advertising+Price:Age,data=Carseats)
summary(lm.fit)

# explain usage of constrasts() -- if time


