## Necessário criar application no site API do Twitter


## Depois processeguir utilizando os dados fornecidos pelo site da aplicação
install.packages("httr")
install.packages("httpuv")
library(httr)
library(httpuv)
oauth_endpoints("github")
myapp = oauth_app("twitter",
                  key="8e4e2ef0cf93646cc332", ## fornecido ao criar o application no site API do twitter
                  secret="97b5879d2bf14040bfeec9128a780229eb9289fb"); myapp  ## fornecido ao criar o application no site API do twitter
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp);github_token

gtoken <- config(token = github_token);gtoken
req <- GET("https://api.github.com/rate_limit", gtoken);req
stop_for_status(req)
content(req)
## ou
req <- with_config(gtoken, GET("https://api.github.com/rate_limit"))
stop_for_status(req)
content(req)

github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# 4. Use API
req <- GET("https://api.github.com/users/jtleek/repos", config(token = github_token))
stop_for_status(req)
output <- content(req)
list(output[[4]]$name, output[[4]]$created_at)

