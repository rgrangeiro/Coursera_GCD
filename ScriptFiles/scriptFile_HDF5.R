## Carregando o pacote à partir do Bioconductor.
source("http://bioconductor.org/biocLite.R")
biocLite("rhdf5")
library(rhdf5)

## Criando um arquivo HDF5
created = h5createdFile("example.h5")
created

## Criando grupos dentro de um arquivo
created = h5createGroup("example.h5","foo")
created = h5createGroup("example.h5","bar")
created = h5createGroup("example.h5","foo/foobar")

## Listando objetos
h5ls("example.h5")

## Escrendo nos grupos
A = matrix(1:10,nr=5,nc=2)
h5write(A, "example.h5", "foo/A")

B = array(seq(0.1,2.0, by=0.1),dim=c(5,2,2))
attr(B, "scale") <- "liter"
h5write(B, "example.h5", "foo/foobar/B")

h5write(c(12,13,14),"example.h5", "foo/A", index=list(1:3,1))
h5read("example.h5","foo/A")

## Criando datasets
df = data.frame(1L:5L.seq(0,1,length.out=5),
                c("ab","cde","fghi","a","s"),
                stringsAsFactors=FALSE)
h5write(df, "example.h5", "df")

## Lendo dados
readA = h5read("example.h5","foo/A")
readA = h5read("example.h5","foo/foobar/B")
readA = h5read("example.h5","df")
readA

