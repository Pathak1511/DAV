# with inbuilt data
#print(data())
#BOD
x = unlist(c(BOD['demand']))
print(x)
y = unlist(c(BOD['Time']))
print(y)
model<-lm(y~x)
print(model)
print(summary(model))
x_pred= data.frame(x=8)
res=predict(model,x_pred)
print(res)
plot(y,x,col='red',main='Time and demand of Biochemica Oxygen',abline(lm(x~y)),
     cex=0.8,pch=16,xlab='Time',ylab='demand')
dev.off()

# with data of user
X=c(151,174,138,186,128,136,179,163,152,131)
Y=c(63,81,56,91,47,57,76,72,62,48)
plot(X,Y)
relation<-lm(Y~X)
print(relation)
print(summary(relation))
a = data.frame(X=170)
result = predict(relation,a)
print(result)
plot(Y,X,col="red",main="Height and Weight Regression",abline(lm(X~Y)),
     cex=0.8,pch=16,Xlab="Weight in kg",Ylab="Height in cm")
dev.off()

