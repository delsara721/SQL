require(lattice)
#C->Q
boxplot(mydata$W4income~mydata$w1smoke,horizontal = T, main="Smoking Habits vs. Income", ylab="Smoke? (Yes/no)", xlab = "Income ($)")
tapply(mydata$W4income,mydata$w1smoke,summary)
histogram(~mydata$W4income|mydata$w1smoke,breaks = 5000,xlim = c(0,100000),layout = c(1,2), main = "Smoking Habit vs. Income", xlab = "Income ($)")
t.test(mydata$W4income~mydata$w1smoke, alternative = "two.sided")
#C->C
#gender vs. smoking habits
prop.table(table(mydata$BIO_SEX,mydata$w1smoke))
histogram(~mydata$BIO_SEX|mydata$w1smoke, main = "gender vs. smoking habits", xlab = "Biological Sex")

#C->C
#living with dad vs. smoking habits
prop.table(table(mydata$W1ResDad,mydata$w1smoke))
histogram(~mydata$w1smoke|mydata$W1ResDad, main = "gender vs. smoking habits")

#Q->Q
#familyincome in wave 1 to wave 4 personal income
plot(mydata$W1FamIncome,mydata$W4income, main = "Family Income vs. Personal Income", xlab = "Family Income (Thousands $)", ylab = "Personal Income ($)")

