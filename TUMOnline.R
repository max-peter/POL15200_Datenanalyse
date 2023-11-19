set.seed(2)
x<-matrix(rnorm(30*2), ncol = 2)
y<-c(rep(-1,15), rep(1,15))
x[y==1,]<-x[y==1] +1
dat=data.frame(x=x, y=as.factor(y))
library(e1071)
svmfit=svm(y~., data=dat, kernel="linear", cost=10, scale=FALSE)