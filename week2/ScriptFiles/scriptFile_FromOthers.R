## Pacotes importantes para leitura de dados de origens diversas
## Origem = outras aplicações estatisticas: Octave, SAS, Weka, Stata, Minitab
install.packages("foreign")
library(foreign)

## funções básicas de leitura
## read.<origem> 
read.arff ## Weka
read.dta ## Stata
read.mtp ## Minitab
read.octave ## Octave
read.spss ## SPSS
read.xport ## SAS

## Outros pacotes
## PostgreSQL
install.packages("RPostgreSQL")
library(RPostgreSQL)

## ODBC
install.packages("RODBC")
library(RODBC)

## MongoDB
install.packages("RMongo")
library(RMongo)

## pacotes para leitura de imagens
install.packages("jpeg")
library(jpeg)

install.packages("readbitmap")
library(readbitmap)

install.packages("png")
library(png)

## Leitura de dados GIS - Dados geográficos
install.packages("rgdal")
library(rgdal)

install.packages("rgeos")
library(rgeos)

install.packages("raster")
library(raster)

## leitura de dados em MP3
install.packages("tuneR")
library(tuneR)

install.packages("seewave")
library(seewave)

