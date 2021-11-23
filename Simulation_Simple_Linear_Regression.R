install.packages('ggfortify')
library(car)
library(MASS)
library(lmtest)
library(tseries)
library(ggfortify)
set.seed(7052)

x=rnorm(n=100,mean=2,sd=0.1)
e=rnorm(n=100,mean=0,sd=0.5)
y=10+5*x+e
model_1<- lm(y~x)
summary(model_1)
autoplot(model_1)
model_1_sum<-summary(model_1)
mean(model_1_sum$residuals^2)

e1=rnorm(n=100,mean=0,sd=1)
y1=10+5*x+e1
model_2<- lm(y1~x)
summary(model_2)
autoplot(model_2)
model_2_sum<-summary(model_2)
mean(model_2_sum$residuals^2)

x1=rnorm(n=400,mean=2,sd=0.1)
e2=rnorm(n=400,mean=0,sd=0.5)
y2=10+5*x1+e2
model_3<-lm(y2~x1)
summary(model_3)
autoplot(model_3)
model_3_sum<-summary(model_3)
mean(model_3_sum$residuals^2)

e3=rnorm(n=400,mean=0,sd=1)
y3=10+5*x1+e3
model_4<-lm(y3~x1)
summary(model_4)
autoplot(model_4)
model_4_sum<-summary(model_4)
mean(model_4_sum$residuals^2)






