setwd("C:/Intro to stats")
salarydata<-read.csv("wagedata.csv")
library(ggplot2) 
#Understanding data structures annd data types
head(salarydata)
tail(salarydata)
dim(salarydata)
nrow(salarydata)
ncol(salarydata)
str(salarydata)
names(salarydata)
# Tabulation and Visualization in R
library(epiDisplay)
table(salarydata$gender)
tab1(salarydata$gender, cum.percent = TRUE)
tab1(salarydata$marital_status, cum.percent = TRUE)
#tab1(salarydata$monthlysalary, cum.percent = TRUE)
table(salarydata$gender, salarydata$marital_status, salarydata$caste)
#tab1(salarydata$gender, salarydata$marital_status, salarydata$caste)
#creating proportion
table1<-table(salarydata$gender, salarydata$marital_status)
prop.table(table1)
#creating dataframe
id <-c(1,2,3,4,5)
name <-c("Kedar","Tejas","Stanzin","Akash","Varsha")
age <-c()
statsdataframe <-read.csv("Stats_age_height.csv")
#visualization in R
library(ggplot2)
barplot(salarydata$gender)
barplot(salarydata$education)
#ggplot(name of dataset, aes(x=gender))+geom_bar()
salarydata<-read.csv("wagedata.csv")
ggplot(salarydata, aes(x = gender))+geom_bar()
#histograms for continuous variables
ggplot(salarydata,aes(x=monthlysalary)) +geom_histograms(bins=10)
ggplot(salarydata)
# setting working directory
setwd(" C:\Intro to stats ")
setwd("C:/Intro to stats")
salarydata<-read.csv("wagedata.csv")
statsdataframe <-read.csv("Stats_age_height.csv")
library(ggplot2)
#visualization in R
barplot(salarydata$gender)
barplot(salarydata$monthlysalary)
#ggplot for generating figures
ggplot(salarydata,aes(x=gender))+geom_bar(width = 0.5)
#plot with labels and titles
ggplot(salarydata,aes(x=gender)) + geom_bar(width = 0.5, fill="skyblue") + ylab("count") + xlab("gender") +ggtitle("Bar Graph depicting the gender distribution in the database") + theme(plot.title = element_text(hjust = 0.5))
ggplot(statsdataframe,aes(x=Gender)) + geom_bar(width = 0.5) + ylab("count")+ xlab("gender")
 +ggtitle("Bar graph of gender distribution in stats class")+ theme(plot.title = element_text(hjust = 0.5))
#histograms for continuous variables
ggplot(salarydata, aes(x=monthlysalary))+ geom_histogram(bins = 10)



ggplot(salarydata,aes(x=gender,fill=marital_status)) + geom_bar(width=0.5) + ylab("Count") +
  xlab("Gender") + ggtitle("Bar Graph depicting the gender distribution in the dataset") + 
  theme(plot.title = element_text(hjust=0.5))
