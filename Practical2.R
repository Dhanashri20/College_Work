data2=read.csv("data2.csv",header=TRUE)
head(data2)
data2=data2[,-1]
model=lm(y~x1+x2+x3+x4+x5+x6,data=data2)
S=summary(model)
R2=S$r.squared
R2_Adj=S$adj.r.squared
R2
R2_Adj
S$fstatistic
plot(data2)
A1=anova(model)
SS=A1$`Sum Sq`
SSR=sum(SS[1:6])
SSR
MSR=SSR/6
MSE=A1$`Mean Sq`[7]
F1=MSR/MSE
data_test=read.csv("test1.csv",header = TRUE)
data_test=data_test[,-1]
predict(model,interval = "confidence",level=0.90,newdata = data_test)