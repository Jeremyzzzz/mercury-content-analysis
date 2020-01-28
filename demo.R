f = read.csv("/Users/JeremyZhang/Desktop/2016fall/sta302/Assignment/A3/fishermen_mercury.csv",header=T)
par(mfrow=c(2,2))

# factor the dummy variables
f$fisherman <- as.factor(f$fisherman)
f$fisherman
f$fishpart <- as.factor(f$fishpart)
f$fishpart

# Simple Linear Regression

# X1 = fisherman indicator
fit1 <- lm(f$TotHg ~ as.factor(f$fisherman))
summary(fit1)
plot(f$TotHg ~ f$fisherman)
# p-value: 0.006272
# We have strong evidence to show there is linear relationship between total mercury and whether the
# person is a fisherman or not.

# X2 = Age in years
fit2 <- lm(f$TotHg ~ f$age)
summary(fit2)
# p-value: 0.06384
# We have weak evidence to show there is linear relationship between total mercury and age.

# X3 = Residence time in years
fit3 <- lm(f$TotHg ~ f$restime)
summary(fit3)
# p-value: 0.474
# We have no evidence to show there is linear relationship between total mercury and residence time in Kuwait.

# X4 = Weight in kg
fit4 <- lm(f$TotHg ~ f$weight)
summary(fit4)
# p-value: 8.281e-07
# We have strong evidence to show there is linear relationship between total mercury and weight.

# X5 = Fish meals per week
fit5 <- lm(f$TotHg ~ f$fishmlwk)
summary(fit5)
# p-value: 0.0003557
# There is strong evidence to show there is linear relationship between total mercury and number of
# fish meal per week.

# X6 = Parts of fish consumed
fit6 <- lm(f$TotHg ~ f$fishpart)
summary(fit6)
plot(f$TotHg ~ f$fishpart)
# p-value: 0.0004106
# There is strong evidence to show there is linear relationship between total mercury and fish part consumed.

fit7 <- lm(f$TotHg ~ f$height)
summary(fit7)
# p-value: 0.0255
# There is moderate evidence to show there is linear relationship between total mercury and height.

# Multiple Linear Regression

full_model = lm(f$TotHg ~ f$fisherman + f$age + f$height + f$weight + f$fishmlwk + f$fishpart)
summary(full_model)
vif(full_model)

mycor <- function ( data ){
  # ------------ put histograms on the diagonal -----------------
  panel.hist <- function (x , ...) {
    usr <- par ("usr") ; on.exit( par (usr ))
    par ( usr = c( usr [1:2] , 0, 1.5) )
    h <- hist (x , plot = FALSE )
    breaks <- h$ breaks ; nB <- length ( breaks )
    y <- h$ counts ; y <- y/ max (y)
    rect ( breaks [ - nB ] , 0, breaks [ -1] , y , col ="lavender", ...)
  }
  
  panel.cor <- function (x , y , digits =4 , prefix ="", cex.cor , ...) {
    usr<- par ("usr") ;
    on.exit ( par ( usr ))
    par(usr = c(0 , 1 , 0 , 1) )
    txt1 <- format ( cor (x ,y) , digits = digits )
    txt2 <- format (cor.test (x ,y)$p.value , digits = digits )
    text (0.5 ,0.5 , paste ("r=",txt1 , "\n P.val =", txt2) , cex=0.8)
  }
  pairs (data , lower.panel = panel.cor , cex =0.7 , pch = 21 , bg ="steelblue",
         diag.panel = panel.hist , cex.labels = 1.1 ,
         font.labels =0.9 , upper.panel = panel.smooth )
}
# ----------- put correlations & P- value & 0.95 CIs on the lower panels ----------------

a3cor = f[,c(2:7,9)]
str(a3cor)
mycor(a3cor)

reduced_model1 = lm(f$TotHg ~ f$fisherman + f$height + f$weight + f$fishmlwk + f$fishpart)
summary(reduced_model1)

reduced_model2 = lm(f$TotHg ~ f$fisherman + f$weight + f$fishpart + f$fishmlwk)
summary(reduced_model2)

reduced_model3 = lm(f$TotHg ~ f$fisherman + f$weight + f$fishpart + f$fishmlwk)

reduced_model4 = lm(f$TotHg ~ f$fisherman + f$weight + f$fishmlwk)
summary(final_model)

final_model = lm(f$TotHg ~ f$weight + f$fishmlwk)
summary(final_model)
plot(final_model)

anova(final_model, full_model)

library(MASS)
b <- boxcox(f$TotHg ~ f$fishmlwk + f$weight)

t_model = lm(sqrt(f$TotHg) ~ f$weight + f$fishmlwk)
summary(t_model)
plot(t_model)

nullmod = lm(f$TotHg ~ 1)
mboth = step(nullmod, scope=list(lower=formula(nullmod), upper=formula(full_model)), direction="both")
