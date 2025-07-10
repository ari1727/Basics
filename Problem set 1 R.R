setwd("C:/Intro to stats")
household<-read.csv("vdsahousehold.csv")
library(ggplot2)

#1 Data types and structures
dim(household)
class(household)
names(household)
str(household)

#2 Tabulation

library(epiDisplay)
table(household$Vulnerability_Domestic)
table(household$Vulnerability_Global)
table(household$Vulnerability_Domestic, household$Vulnerability_Global) 
table(household$Caste, household$Vulnerability_Global)
table(household$Caste, household$Vulnerability_Domestic)

#3 Visualization
ggplot(household, aes(x= Vulnerability_Global))+ geom_bar(width = 0.5, fill ="green")+
  ylab("Count")+ xlab("Vulnerability")+ggtitle("Distribution of vulnerable and non vulnerable households")
ggplot(household, aes(x= Vulnerability_Domestic, fill = Caste))+ geom_bar(width = 0.5, color ="pink")+
  ggtitle("Bar Graph Distribution on Caste") + ylab("Count")+ xlab(" Vulnerability")
ggplot(household, aes(x = Household_Income)) + geom_histogram(bins = 50, color ="red")+
  ggtitle("Histogram of Household Income Distribution")+ ylab("Income") + xlab("Household")

#4 Summarization
summary(household)
mean(household$Household_Income)
median(household$Household_Income)
mode(household$Household_Income)
quantile(household$Household_Income,c(0.50))
quantile(household$Household_Income,c(0.01, 0.10, 0.90,0.99))

var(household$Household_Income)
sd(household$Household_Income)
var(household$Pct_area_under_HYV)
sd(household$Pct_area_under_HYV)
var(household$Pct_area_under_Irrigation)
sd(household$Pct_area_under_Irrigation)

house1<-summary(household$Household_Income)
house2<-summary(household$Pct_area_under_HYV)
house3<-summary(household$Pct_area_under_Irrigation)
summarytable<- cbind(house1, house2, house3)
colnames(summarytable)<-c("Household_Income", "Pct_area_under_HYV", "Pct_area_under_Irrigation")
summarytable<-t(summarytable)

#5 Correlation
#a
PQdata<- read.csv("Price-Quantity.csv")
ggplot(PQdata,aes(x=ï..price,y=quantitydemanded)) + geom_point() + geom_smooth(method="loess") +
  ylab("price") + xlab("quantity")
ggplot(PQdata,aes(x=ï..price,y=quantitysupplied)) + geom_point() + geom_smooth(method="loess") +
  ylab("price") + xlab("quantity")
cor.test(PQdata$ï..price,PQdata$quantitydemanded)
cor.test(PQdata$ï..price, PQdata$quantitysupplied)
#b
emigdp <- read.csv("Emissions-GDP.csv")
cor.test(emigdp$annualco2emissionspercapita, emigdp$gdppercapita)
ggplot(emigdp,aes(x=annualco2emissionspercapita, y=gdppercapita)) + geom_point() + geom_smooth(method="loess") +
  ylab("GDP") + xlab("CO2")
#c
airdata<- read.csv("Air Pollution Dataset.csv")
cor.test(airdata$death_pm2p5, airdata$pm2p5_exp)
ggplot(airdata, aes(x = death_pm2p5, y = pm2p5_exp)) + geom_point() + geom_smooth(method = "loess")+
  ylab("PM2.5") + xlab("Air Pollution Mortality")

