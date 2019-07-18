#Delsey_Sabu
#1
#c->Q
require(lattice)
tapply(mydata$W4income,mydata$W1ResMom,summary)
tapply(mydata$W4income,mydata$W1ResMom,sd, na.rm = T)
t.test(mydata$W4income~mydata$W1ResMom,alternative="two.sided")

#2
#C->Q
tapply(mydata$W4income,mydata$W1ResDad,summary)
tapply(mydata$W4income,mydata$W1ResDad,sd, na.rm = T)
t.test(mydata$W4income~mydata$W1ResDad,alternative="two.sided")

#3
#C->C
prop.table(table(mydata$BIO_SEX,mydata$W1ResMom), margin=1)
table(mydata$BIO_SEX,mydata$W1ResMom)
prop.test(table(mydata$BIO_SEX,mydata$W1ResMom),alternative="two.sided")

#4
#C->Q
#Smoking in wave 1 and Personal Income in wave 4
tapply(mydata$W4income,mydata$w1smoke,summary)
tapply(mydata$W4income,mydata$w1smoke,sd)
t.test(mydata$W4income~mydata$w1smoke,alternative="two.sided")

#C->C
#residing with mother figure in wave 1 and smoking in wave 1
prop.table(table(mydata$W1ResMom,mydata$w1smoke), margin=1)
table(mydata$W1ResMom, mydata$w1smoke)
prop.test(table(mydata$W1ResMom, mydata$w1smoke),alternative="two.sided")

#C->C
#biological sex and smoking 
prop.table(table(mydata$BIO_SEX,mydata$w1smoke), margin=1)
table(mydata$BIO_SEX, mydata$w1smoke)
prop.test(table(mydata$BIO_SEX, mydata$w1smoke),alternative="two.sided")