####    Chapter 4 Lab: Logistic Regression, LDA, QDA, and KNN


### Logistic Regression

# logistic regression does not converge under separation

y0 <- rep(0,10)
y1 <- rep(1,10)
y <- c(y0, y1)  # for running glm for logistic regression, we must encode y by 0 or 1.
x0 <- rnorm(10)
x1 <- rnorm(10, 5, 1)
x <- c(x0, x1)
y
x
plot(x0, y0, ylim = range(y), xlim = range(x), col = "blue")
points(x1, y1, col="red") # red and blue points are separated

fit=glm(y~x,family=binomial)
summary(fit)
warnings() # note the warning messages we get 
predict(fit,type="response")

seq=seq(min(x) - 0.1, max(x) + 0.1, by = 0.1)
prediction <- predict(fit, list(x=seq), type="response")
lines(seq, prediction, col = "green")


# Fit Logistic Regression to the Stock Market data

library(ISLR)
names(Smarket)
dim(Smarket)
summary(Smarket)
pairs(Smarket)

cor(Smarket)   # variables must be numerical variables
cor(Smarket[,-9])
attach(Smarket) # the correlation between Year and Volume is 0.54! 
plot(Volume)  


glm.fit <- glm(Direction ~ Lag1 + Lag2 + Lag3 + Lag4 + Lag5 + Volume, 
               data = Smarket, family = binomial)
summary(glm.fit)
coef(glm.fit)
glm.fit$coefficients
summary(glm.fit)$coef
summary(glm.fit)$coef[,4]

glm.probs <- predict(glm.fit, type = "response")
glm.probs[1:10]
contrasts(Direction)

glm.pred <- rep("Down", nrow(Smarket))
glm.pred[glm.probs > 0.5] = "Up"
table(glm.pred, Direction)
(507+145)/1250  # percentage of correct predictions for the training samples
mean(glm.pred == Direction)

# Use the data before 2005 to train the model and test the fitted model by the 
# data after 2005. 

train <- (Year < 2005) # split data into training and testing data
Smarket.2005 <- Smarket[!train, ]  # test data
dim(Smarket.2005)
Direction.2005 <- Direction[!train]

# fit logistic regressioon on the training data
glm.fit <- glm(Direction ~ Lag1 + Lag2 + Lag3 + Lag4 + Lag5 + Volume,
               data = Smarket, family = binomial, subset = train)
glm.probs <- predict(glm.fit, Smarket.2005, type="response")
glm.pred <- rep("Down", sum(!train))
glm.pred[glm.probs > 0.5] <- "Up"
table(glm.pred, Direction.2005)
mean(glm.pred == Direction.2005)  #estimate the test error, it is worse than random guessing


glm.fit <- glm(Direction ~ Lag1 + Lag2, data = Smarket, family = binomial,
               subset = train)
glm.probs <- predict(glm.fit, Smarket.2005, type="response")
glm.pred <- rep("Down", sum(!train))
glm.pred[glm.probs > 0.5] = "Up"
table(glm.pred,Direction.2005)
mean(glm.pred == Direction.2005)



###  Linear Discriminant Analysis

library(MASS)
lda.fit <- lda(Direction ~ Lag1 + Lag2, data = Smarket, subset = train)
lda.fit  #if −0.642 × Lag1 − 0.514 × Lag2 is large, we predict up.
lda.pred <- predict(lda.fit, Smarket.2005)
names(lda.pred)
lda.class <- lda.pred$class
table(lda.class, Direction.2005)
mean(lda.clas == Direction.2005)  #similar results to logistic regression



###   Quadratic Discriminant Analysis

qda.fit <- qda(Direction ~ Lag1 + Lag2, data = Smarket, subset = train)
qda.fit
qda.class <- predict(qda.fit, Smarket.2005)$class
table(qda.class, Direction.2005)
mean(qda.class == Direction.2005)



###  K-Nearest Neighbors
library(class)
train.X <- cbind(Lag1,Lag2)[train, ] #X for training data
test.X <- cbind(Lag1,Lag2)[!train, ] #X for testing data
train.Direction <- Direction[train] #Y for training data

set.seed(1) # to ensure the reproducibility, set a random seed beforehand
knn.pred <- knn(train.X, test.X, train.Direction, k = 1)
table(knn.pred, Direction.2005)
mean(knn.pred == Direction.2005)

knn.pred <- knn(train.X, test.X, train.Direction, k = 3)
table(knn.pred, Direction.2005)
mean(knn.pred == Direction.2005)



### An Application to Caravan Insurance Data

dim(Caravan)
attach(Caravan)
summary(Purchase)
348/5822  # the ratio of Yes is very small, i.e. the two classes are highly imbalanced

standardized.X <- scale(Caravan[,-86])  # the 86th column is the Purchase outcome
var(Caravan[,1])
var(Caravan[,2])
var(standardized.X[,1])
var(standardized.X[,2])


test_ind <- 1:1000
train.X <- standardized.X[-test_ind,]
train.Y <- Purchase[-test_ind]

test.X <- standardized.X[test_ind,]
test.Y <- Purchase[test_ind]


set.seed(1)
knn.pred <- knn(train.X, test.X, train.Y, k = 1)
table(knn.pred, test.Y)
mean(test.Y != knn.pred)
mean(test.Y != "No")  # Overall, KNN is no better than blindly classifying to "No"

9 / (9 + 68)  # However, it improves the chance of Purchase to 11.7% comparing to 5.8% 

knn.pred <- knn(train.X, test.X, train.Y, k = 3)
table(knn.pred, test.Y)
5 / (5 + 21)

knn.pred <- knn(train.X, test.X, train.Y, k = 5)
table(knn.pred,test.Y)
4 / (4 + 11)

glm.fit <- glm(Purchase~., data = Caravan, family = binomial, subset = -test_ind)
glm.probs <- predict(glm.fit, Caravan[test_ind,], type="response")
glm.pred <- rep("No", 1000)
glm.pred[glm.probs > 0.5] <- "Yes"
table(glm.pred,test.Y)

glm.pred <- rep("No",1000)
glm.pred[glm.probs > 0.25] <- "Yes"
table(glm.pred,test.Y)
11/(22+11)
