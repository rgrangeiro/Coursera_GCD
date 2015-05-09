## question 01 ##

setwd("C:/Users/Milena/Documents/R/gcData/week1/quiz")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", destfile ="./idaho.csv")
idaho <- read.csv("./idaho.csv")
names(idaho)
which(na.exclude(idaho[37]) == 24)
length(which(na.exclude(idaho[37]) == 24))

## ----- ## 
## question 03 ##

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx", destfile ="./ngap.xlsx", mode='wb')

## deve-se instalar o jdk e configurar o JAVA_HOME ## 
Sys.setenv(JAVA_HOME='C:\\Program Files\\Java\\jre1.8.0_40')

install.packages("xlsx", dependencies = TRUE)
install.packages("rJava", dependencies = TRUE)
library(rJava)
library(xlsx)

dat <- read.xlsx(file="ngap.xlsx",sheetIndex=1,colIndex=7:15,startRow=18, endRow=23, header=TRUE); dat
sum(dat$Zip*dat$Ext,na.rm=T) 


## ----- ## 
## question 04 ##
install.packages("XML")
library(XML)
urldata <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
rest <- xmlInternalTreeParse(urldata)
rootNode <- xmlRoot(rest)
zipcode <- xpathSApply(rootNode, "//zipcode", xmlValue)
table(zipcode == 21231)

## ----- ## 
## question 05 ##

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv", destfile ="./acsidaho.xlsx", mode='wb') 
install.packages("data.table")
library(data.table)
DT <- fread("./acsidaho.xlsx")
system.time(mean(DT$pwgtp15,by=DT$SEX))
system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))
system.time(DT[,mean(pwgtp15),by=SEX])
system.time(rowMeans(DT)[DT$SEX==1]); system.time(rowMeans(DT)[DT$SEX==2])
system.time(tapply(DT$pwgtp15,DT$SEX,mean))
system.time(mean(DT[DT$SEX==1,]$pwgtp15)); system.time(mean(DT[DT$SEX==2,]$pwgtp15))