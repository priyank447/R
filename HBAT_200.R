HBAT_200 <- read_sav("D:/FOSTIIMA/BA material/HBAT_200.sav")
View(HBAT_200)
# Independent Sample t Test
t.test(HBAT_200$x18~HBAT_200$x5)
# One wayAnova 
res.aov <- aov(x22 ~as.factor(x1), data=HBAT_200)
summary(res.aov)
# Post Hoc Analysis
TukeyHSD(res.aov)

#Frequencies Statistics
mean(HBAT_200$x18)
median(HBAT_200$x18)
min(HBAT_200$x18)
max(HBAT_200$x18)
range(HBAT_200$x18)
sd(HBAT_200$x18)
var(HBAT_200$x18)
summary(HBAT_200$x18)

mean(HBAT_200$x22)
median(HBAT_200$x22)
min(HBAT_200$x22)
max(HBAT_200$x22)
range(HBAT_200$x22)
sd(HBAT_200$x22)
var(HBAT_200$x22)
summary(HBAT_200$x22)

#Frequency Table
table(HBAT_200$x5)
table(HBAT_200$x1)

#Pie Chart
mytable <-table(HBAT_200$x1)
pie(mytable)
mytable <-table(HBAT_200$x5)
pie(mytable)

#Boxplot 1
input <- HBAT_200[,c('x22','x1')]
print(head(input))

boxplot(x22 ~ x1, data = HBAT_200, xlab = "x1 Customer Type",
        ylab = "x22 Purchase Level")

#Boxplot 2
input <- HBAT_200[,c('x18','x5')]
print(head(input))

boxplot(x18 ~ x5, data = HBAT_200, xlab = "x5 Distribution System",
        ylab = "x18 Delivery Speed")

# Required for skewness() function 
library(moments) 
print(skewness(HBAT_200$x22))
print(kurtosis(HBAT_200$x22))
hist(HBAT_200$x22)

print(skewness(HBAT_200$x18))
print(kurtosis(HBAT_200$x18))
hist(HBAT_200$x18)
