library(httr) ## Carrega a library
html2 = GET(url) ## Obtem os daddos da URL previamente definida
content2 = content(html2,as=text"") ## Carrega os dados em memória como texto puro
parsedHtml = htmlParse(conten2,asText=TRUE) ## Organiza a estrutura hierarquica do texto
xpathSApply(parsedHtml, "//title", xmlValue) ## Obtem trecho específico do texto extraido

## Em casos onde o site solicita autenticação
pg2 = GET(url, authenticate("user","password"))
pg2

## Utilizando handle para armazenar um determinado dominio
google <- handle("http://google.com")
GET(handle = google, path = "/")
GET(handle = google, path = "search")

