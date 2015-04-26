## Necessário criar application no site API do Twitter

## Depois processeguir utilizando os dados fornecidos pelo site da aplicação
myapp = oauth_app("twitter",
                  key="yourConsumerKeyHere", ## fornecido ao criar o application no site API do twitter
                  secret="yourConsumerSecretHere")  ## fornecido ao criar o application no site API do twitter
si = sig_oauth1.0(myapp,
                  token = "yourTokenHere", ## fornecido ao criar o application no site API do twitter
                  token_secret = "yourTokenSecretHere") ## fornecido ao criar o application no site API do twitter
homeTL = GET("https://api.twitter.com/1.1/statuses/home_timeLine.json", sig) ## 1.1 é a versão da API, JSON é o formato que o Twitter entrega por padrão.

## Pacote para trabalhar com JSON
install.packages("RJSONIO")
library(RJSONIO)


## Extraindo as informações
json1 = content(homeTL) ## função content() reconhece dados JSON

## criar um objeto R estruturado - usar fromJSON
## criar um dataframe a partir desse dado e reformatando - jsonlite
json2 = jsonline::fromJSON(toJSON(json1))

