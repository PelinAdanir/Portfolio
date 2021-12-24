
rm(list=ls())
library(psych)

dat <- read.table("winequality-red.csv", sep=";", header=TRUE)
dim(dat)
describe(dat)[,1:9]
head(dat)

#	Defining high quality wines
table(dat$quality)
dat$quality <- I(dat$quality > 6) * 1
describe(dat)[,1:9]

set.seed(42)

X<-scale(dat[,1:11])
tst<-1:463
X.trn <- X[-tst,]
X.tst <- X[tst,]
Y.trn <- dat[-tst,12]
Y.tst <- dat[tst,12]
dat.train <- dat[-tst,]
dat.test <- dat[tst,]


# Random Forest
library(randomForest)
attach(dat)
set.seed(42)
rf <- randomForest(quality ~ ., data=dat.train)
summary(rf)
cor(predict(rf,dat.test),Y.tst)^2

rf2 <- randomForest(quality ~ ., ntree=1000,  data=dat.train)
summary(rf2)
cor(predict(rf2,dat.test),Y.tst)^2

yhat.rf <- predict(rf, dat.test)
rf.roc<-roc(Y.tst, yhat.rf,direction="<")
rf.roc

table(dat.test$quality, (yhat.rf > 0.5))


# Gradient Boosting
library(xgboost)
parm <- list(nthread=2, max_depth=2, eta=0.10)
bt <- xgboost(parm,data=X.trn, label=Y.trn, verbose=2, nrounds=10)
cor(predict(bt,X.tst),Y.tst)^2

yhat.bt <- predict(bt, X.tst)
bt.roc<-roc(Y.tst, yhat.bt,direction="<")
bt.roc

table(dat.test$quality, (yhat.bt > 0.5))
