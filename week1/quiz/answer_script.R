## question 01 ##

setwd("C:/Users/Milena/Documents/R/gcData/week1/quiz")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", destfile ="./idaho.csv")
idaho <- read.csv("./idaho.csv")
names(idaho)
which(na.exclude(idaho[37]) == 24)
length(which(na.exclude(idaho[37]) == 24))

## ----- ## 
## question 03 ##

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx", destfile ="./ngap.xlsx")

## deve-se instalar o jdk e configurar o JAVA_HOME ## 
Sys.setenv(JAVA_HOME='C:\\Program Files\\Java\\jre1.8.0_40')

install.packages("xlsx", dependencies = TRUE)
install.packages("rJava", dependencies = TRUE)
library(rJava)
library(xlsx)

dat <- read.xlsx(file="ngap.xlsx",sheetIndex=1,colIndex=7:15,startRow=18, endRow=23, header=TRUE)
