## Q1
setwd("C:/Users/Milena/Documents/R/coursera_gcd/week4/quizz")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", destfile ="./idaho.csv")
idaho <- read.csv("./idaho.csv")
head(idaho)
namesIdaho <- names(idaho) ; namesIdaho
respQ1 <- strsplit(namesIdaho, "wgtp")[[123]] ; respQ1
## R: [1] ""   "15"

## Q2
install.packages("data.table")
library(data.table)
setwd("C:/Users/Milena/Documents/R/coursera_gcd/week4/quizz")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile ="./fgdp.csv")
fgdp <- data.table(read.csv("fgdp.csv", skip = 5, nrows = 235,stringsAsFactors = F, header = F))
fgdp <- fgdp[, list(V1, V2, V4, V5)]
fgdp <- fgdp[V1 != "" & V2 != ""]
setnames(fgdp, c("V1", "V2", "V4", "V5"), c("CountryCode", "Ranking_GDP","Long.Name", "Gross_Domestic_Product"))
respQ2 <- mean(as.numeric(gsub(",", "", fgdp$Gross_Domestic_Product)), na.rm = TRUE); respQ2
## R: [1] 377652.4

## Q3
length(grep("^United",fgdp$Long.Name)) # 3 *** respQ4 
length(grep("United$",fgdp$Long.Name)) # 3 
length(grep("^United",fgdp$Long.Name)) # 4 
length(grep("*United",fgdp$Long.Name)) # 2 
## R: grep("^United",countryNames), 3

## Q4
install.packages("data.table")
library(data.table)
setwd("C:/Users/Milena/Documents/R/coursera_gcd/week4/quizz")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile ="./fgdp.csv")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", destfile = "fedstats.csv")

fedstats <- data.table(read.csv("fedstats.csv"))
fgdp <- data.table(read.csv("fgdp.csv", skip = 5, nrows = 235,stringsAsFactors = F, header = F))
fgdp <- fgdp[, list(V1, V2, V4, V5)]
fgdp <- fgdp[V1 != "" & V2 != ""]
setnames(fgdp, c("V1", "V2", "V4", "V5"), c("CountryCode", "Ranking_GDP","Long.Name", "Gross_Domestic_Product"))
fgdp_fedstats <- merge(fgdp, fedstats, by="CountryCode"); View(fgdp_fedstats)

respQ4 <- length(grep("^Fiscal year end: June", fgdp_fedstats$Special.Notes)); respQ4
## R: [1] 13

## Q5
install.packages("quantmod")
library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn) ;sampleTimes

ano2012 <- grep("^2012",sampleTimes); ano2012
qtde_ano2012 <- length(ano2012); qtde_ano2012
segundas <- grep("segunda-feira", weekdays(sampleTimes[ano2012])); segundas
qtde_segundas <- length(grep("segunda-feira", weekdays(sampleTimes[ano2012])));qtde_segundas
respQ5 <- c(qtde_ano2012,segundas); respQ5
## R: [1] 250  47
