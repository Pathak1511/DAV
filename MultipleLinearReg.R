input <- mtcars[,c("mpg","disp","hp","wt")]
print(head(input))

# Create the relationship model.
model <- lm(mpg~disp+hp+wt, data = input)

# Show the model.
print(model)
print(summary(model))

# Get the Intercept and coefficients as vector elements.
cat("# # # # The Coefficient Values # # # ","\n")

a <- coef(model)[1]
print(a)

Xdisp <- coef(model)[2]
Xhp <- coef(model)[3]
Xwt <- coef(model)[4]

print(Xdisp)
print(Xhp)
print(Xwt)

# predicting for disp=100, h=105, wt=1.99
x_pred = data.frame(disp=c(100),hp=c(105),wt=c(1.99))
pred= predict(model,x_pred)
print(pred)
