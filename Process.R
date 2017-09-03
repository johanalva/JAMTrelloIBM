trelloCollection <- function(key, secret, ae){
    apic <- oauth_app("trello", key, secret)
    rq <- "https://trello.com/1/OAuthGetRequestToken"
    au <- "https://trello.com/1/OAuthAuthorizeToken"
    ac <- "https://trello.com/1/OAuthGetAccessToken"
    otep <- oauth_endpoint(rq, au, ac, ae)
    options(httr_oauth_cache=FALSE)
    my_token <- oauth1.0_token(otep, apic)
    ae <- paste0(ae, ".json")
    req <- httr::GET(ae, my_token, paging = TRUE)
    json <- httr::content(req, paging = TRUE)
    ibd2 <- get_id_board(ae, my_token)
    return(ibd2)
}
