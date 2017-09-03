
trelloCollection <- function(key, secret, appname = "trello"){
    trello.app = oauth_app(
        appname = appname,
        key = key,
        secret = secret)
    
    trello.urls = oauth_endpoint(
        "https://trello.com/1/OAuthGetRequestToken",
        "https://trello.com/1/OAuthAuthorizeToken",
        "https://trello.com/1/OAuthGetAccessToken")
    
    trello.token = oauth1.0_token(trello.urls, trello.app)
}
