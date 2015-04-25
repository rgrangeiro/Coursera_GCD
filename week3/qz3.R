## Q1

install.packages("data.table")
library(data.table)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv",destfile = "idaho.csv")

idaho <- data.table(read.csv("idaho.csv"))
agricultureLogical <- idaho$ACR == 3 & idaho$AGS == 6
which(agricultureLogical)[1:3]
## R: 125 238 262 

## Q2

install.packages("jpeg")
library(jpeg)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg", destfile = "jeff.jpg", mode ="wb")

jeff <- readJPEG("jeff.jpg", native=TRUE)
quantile(jeff, probs=c(0.3,0.8))

## R: -15259150 -10575416

## Q3

install.packages("data.table")
library(data.table)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile = "FGDP.csv")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", destfile = "FEDSTATS.csv")

fgdp <- data.table(read.csv("FGDP.csv"))
fedstats <- data.table(read.csv("FEDSTATS.csv"))

fgdp <- data.table(read.csv("FGDP.csv", skip = 5, nrows = 235,stringsAsFactors = F, header = F))
fgdp <- fgdp[, list(V1, V2, V4, V5)]
fgdp <- fgdp[V1 != "" & V2 != ""]
setnames(fgdp, c("V1", "V2", "V4", "V5"), c("CountryCode", "Ranking_GDP","Long.Name", "Gross_Domestic_Product"))

fgdp_fedstats <- merge(fgdp, fedstats, by="CountryCode"); View(fgdp_fedstats)

resp1 <- dim(fgdp_fedstats)[1]

resp2 <- arrange(fgdp_fedstats,desc(as.numeric(Ranking_GDP)))
resp2 <- resp2[13,Long.Name.x]

resp1;resp2

## R: 189, "St. Kitts and Nevis"

## Q4

averageGDP <- fgdp_fedstats[, mean(as.numeric(Ranking_GDP), na.rm = TRUE), by = Income.Group]
averageGDP
Resp = subset(averageGDP, grepl("^High income", Income.Group))
Resp

## R: 32.96667 ; 91.91304

## Q5

