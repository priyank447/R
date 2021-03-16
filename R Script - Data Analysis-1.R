mean (Marketing_Operations_Data$x6)
median(Marketing_Operations_Data$x6)
min(Marketing_Operations_Data$x6)
max(Marketing_Operations_Data$x6)
range(Marketing_Operations_Data$x6)
sd(Marketing_Operations_Data$x6)
var(Marketing_Operations_Data$x6)
summary(Marketing_Operations_Data$x6)

# https://www.statmethods.net/stats/descriptives.html
# Install Package - "psych"
install.packages("psych")
# Calling Installed Package from Library
library(psych)
describe(Marketing_Operations_Data$x6)
# Install Package - "pastecs"
install.packages("pastecs")
library(pastecs)
stat.desc(Marketing_Operations_Data$x6)

#Frequency Table, CrossTabs, ChiSquare Test of Independence
# Frequency Table
table(Marketing_Operations_Data$x1)
table(Marketing_Operations_Data$x2)
table(Marketing_Operations_Data$x3)

# CrossTabs & Chi Square Test of Independence
table1<-table(Marketing_Operations_Data$x1, Marketing_Operations_Data$x3)
table1 # print table
chisq.test(table1)

mytable<-table(Marketing_Operations_Data$x2, Marketing_Operations_Data$x3)
mytable # print table
chisq.test(mytable)

# One Sample t Test
# Two Tailed One Sample t-Test
t.test(Marketing_Operations_Data$x6, mu=7)
t.test(Marketing_Operations_Data$x6, mu=8)
# One Tailed One Sample t-Test
t.test(Marketing_Operations_Data$x6,mu=7, alternative="greater")
t.test(Marketing_Operations_Data$x6,mu=8, alternative="less")

# Paired Sample t Test
# Two Tailed Paired t Test
t.test(Stock_Returns_Pre_Post_Crisis$PreInd,Stock_Returns_Pre_Post_Crisis$PostInd,paired=TRUE)
# One Tailed Paired t Test
t.test(Stock_Returns_Pre_Post_Crisis$PreInd,Stock_Returns_Pre_Post_Crisis$PostInd,paired=TRUE, alternative="greater")
t.test(Stock_Returns_Pre_Post_Crisis$PreInd,Stock_Returns_Pre_Post_Crisis$PostInd,paired=TRUE, alternative="less")
# Non Parametric: Wilcoxon Signed Rank Test
wilcox.test(Stock_Returns_Pre_Post_Crisis$PreInd,Stock_Returns_Pre_Post_Crisis$PostInd,paired=TRUE)

# Independent Sample t Test
t.test(HR_OB_Data$JP~HR_OB_Data$Gender)
t.test(HR_OB_Data$JS~HR_OB_Data$Type)
# Non Parametric: Mann-Whitney U Test 
wilcox.test(HR_OB_Data$JP~HR_OB_Data$Gender)
wilcox.test(HR_OB_Data$JS~HR_OB_Data$Type)


# One Way ANOVA
res.aov <- aov(x19 ~ x1, data=Marketing_Operations_Data)
summary(res.aov)
# Post Hoc Analysis
TukeyHSD(res.aov)
# Non Parametric: Kruskal Wallis One Way ANOVA Test
kruskal.test(Marketing_Operations_Data$x19~Marketing_Operations_Data$x1)

# Correlation Analysis
# Scatter Plot
plot (Marketing_Operations_Data$x19, Marketing_Operations_Data$x20) 
pairs(~IINDEX+IGDP+IINF+IIR, data = Finance_Economics_Data) 

# Bi-Variate Correlations 
# cor.test(Marketing_Operations_Data$x19,Marketing_Operations_Data$x20, 
         alternative=c("two.sided", "less", "greater"), method= c("pearson", "kendall", "spearman"))  
cor.test(Marketing_Operations_Data$x19,Marketing_Operations_Data$x20, 
         alternative=c("two.sided"), method= c("pearson"))
cor.test(Marketing_Operations_Data$x19,Marketing_Operations_Data$x20, 
         alternative=c("less"), method= c("kendall"))
cor.test(Marketing_Operations_Data$x19,Marketing_Operations_Data$x20, 
         alternative=c("greater"), method= c("spearman"))

#Regression Analysis
fit <- lm(SI ~ JS, data=HR_OB_Data) 
summary(fit)
coefficients(fit)

fit <- lm(IINDEX ~ IGDP + IINF + IIR + IER + IMS, data=Finance_Economics_Data) 
summary(fit)
coefficients(fit)
anova(fit)
plot(fit)


# Graphs

# Bar Charts

# Simple Bar Plot
counts<-table(Marketing_Operations_Data$x2)
barplot(counts)

#Stacked Bar Plot
counts <- table(Marketing_Operations_Data$x2, Marketing_Operations_Data$x3)
barplot(counts, xlab="Firm Size", col=c("red","blue"))

#Grouped Bar Plot
counts <- table(Marketing_Operations_Data$x2, Marketing_Operations_Data$x3)
barplot(counts, xlab="Firm Size", col=c("green","blue"), beside=TRUE)

#Pie Chart
mytable <-table(Marketing_Operations_Data$x3)
pie(mytable)
mytable <-table(Marketing_Operations_Data$x1)
pie(mytable)

# Using R Datasets
# Load a built-in R data set: data("dataset_name")
# Inspect the data set: head(dataset_name)
data("cars")
head(cars)