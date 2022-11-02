####  Chapter 7 Lab: Non-linear Modeling
rm(list = ls())

library(ISLR)
attach(Wage)

### Polynomial Regression 

fit <- lm(wage ~ poly(age,4), data=Wage)  # by default, the "poly" function use orthogonal polynomials
coef(summary(fit))

fit_raw <- lm(wage ~ poly(age,4,raw=T), data=Wage) # use raw polynomial x, x^2,x^3,...
coef(summary(fit_raw))

# Alternative ways of constructing polynomial features 
fit_raw_alternative <- lm(wage ~ age+I(age^2)+I(age^3)+I(age^4), data=Wage)
coef(fit_raw_alternative)   # compare with the coefficients of fit_raw

fit_raw_alternative_2 <- lm(wage ~ cbind(age, age^2, age^3, age^4), data=Wage)
coef(fit_raw_alternative_2) 

# create a grid of age to predict
agelims <- range(age)
age.grid <- seq(from = agelims[1], to = agelims[2])

preds <- predict(fit, newdata = list(age=age.grid), se=TRUE)
# obtain confidence interval for fitted value
se.bands <- cbind(preds$fit+2*preds$se.fit,preds$fit-2*preds$se.fit) 

plot(age, wage, xlim=agelims, cex=.5, col="darkgrey")
title("Degree-4 Polynomial", outer=T)
lines(age.grid, preds$fit, lwd=2, col="blue")
matlines(age.grid, se.bands, lwd=1, col="blue", lty=3)

preds_raw <- predict(fit_raw, newdata = list(age=age.grid), se=TRUE)

# using orthogonal and raw polynomials has no effect on prediction
max(abs(preds$fit - preds_raw$fit))  


### fit a logistic model with polynomial

fit_logis <- glm(I(wage>250) ~ poly(age,4), data=Wage, family=binomial) 
preds_logis <- predict(fit_logis, newdata=list(age=age.grid), se=T)

pfit <- exp(preds_logis$fit)/(1+exp(preds_logis$fit)) # estimated probability

se.bands.logit <- cbind(preds_logis$fit+2*preds_logis$se.fit, preds_logis$fit-2*preds_logis$se.fit) # confidence interval in the logit scale
se.bands <- exp(se.bands.logit)/(1+exp(se.bands.logit)) # transform confidence interval to P(y=1|x)

plot(age, I(wage>250), xlim=agelims, type="n", ylim=c(0,.2))
points(jitter(age), I((wage>250)/5), cex=.5, pch="|", col="darkgrey")
lines(age.grid, pfit, lwd=2,  col="blue")
matlines(age.grid, se.bands, lwd=1, col="blue", lty=3)


###  Step functions

table(cut(age, 4))  # obtain cut points of age
fit_step <- lm(wage ~ cut(age,4), data=Wage)
coef(summary(fit_step))

###  Splines 

library(splines)

fit_splines <- lm(wage ~ bs(age, knots=c(25,40,60)), data=Wage) # by default, bs creates cubic spline
pred_splines <- predict(fit_splines, newdata=list(age=age.grid), se=T)

plot(age, wage, col="gray")
lines(age.grid, pred_splines$fit,lwd=2)
lines(age.grid, pred_splines$fit+2*pred_splines$se, lty="dashed")
lines(age.grid, pred_splines$fit-2*pred_splines$se, lty="dashed")


dim(bs(age, knots=c(25,40,60))) # 3 knots has 6 basis functions
dim(bs(age, df=6)) # specify the number of basis function and R will place knots with equal quantiles
attr(bs(age, df=6),"knots") # here is the location of knots

fit_nsplines <- lm(wage ~ ns(age, df=6), data=Wage) # fit natural cubic spline with 6 degrees 
pred_nsplines <- predict(fit_nsplines, newdata=list(age=age.grid), se=T)
lines(age.grid, pred_nsplines$fit,col="red",lwd=2)



### Local regression (kernel smoothing)

plot(age, wage, xlim=agelims, cex=.5, col="darkgrey")
title("Local Regression")
fit_lr2 <- loess(wage ~ age, span=.2, data=Wage) # span=0.2 means the neighourhood includes 20% points
fit_lr5 <- loess(wage ~ age, span=.5, data=Wage)
lines(age.grid, predict(fit_lr2, data.frame(age=age.grid)), col="red", lwd=2)
lines(age.grid, predict(fit_lr5, data.frame(age=age.grid)), col="blue", lwd=2)
legend("topright", legend=c("Span=0.2","Span=0.5"), col=c("red","blue"),
       lty=1, lwd=2, cex=.8)



###  Generalized Additive Models: GAMs
gam1 <- lm(wage~ ns(year,4) + ns(age,5) + education, data=Wage) #method 1: create natural spline basis and fit a linear model

library(gam)

gam.lo=gam(wage~ ns(year,4) + lo(age,span=0.7)+education, data=Wage) #in gam, we can also use local regression lo
plot(gam.lo, se=TRUE, col="green")


## fit gam for logistic regression

gam.lr <- gam(I(wage>250) ~ year + ns(age,df=5) + education, family=binomial, data=Wage)
par(mfrow=c(1,3))
plot(gam.lr, se=T, col="green")
table(education, I(wage>250))  # TRUE=0 in "1.<HS Grad category", we can remove this category
gam.lr.s <- gam(I(wage>250) ~ year + ns(age,df=5) + education, family=binomial, data=Wage, subset=(education!="1. < HS Grad"))
plot(gam.lr.s, se=T, col="green")

