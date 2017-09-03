library(httr)
library(plyr)
library(magrittr)
library(lubridate)
library(trelloR)
library(jsonlite)
library(dplyr)
library(stringr)
library(plotly)
library(shiny)
library(rsconnect)
library(BH)
library(DT)
library(yaml)
library(stringi)
#install.packages(c("trelloR", "httr", "jsonlite"))

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
    source("C:/Users/johnalva/Desktop/JAMTrelloIBM/Process.R")
    
    trelloDF <- observe({
        output$ct <- renderText({
            trelloDF
        })
    })
    
    observeEvent(input$do, {
        board <- trelloCollection("d00e8afb53f716936477840488ad72f5",
            "7e46b4cff5903e5c74d88cc26fa262a1b347edacfabe7b95157f6ca52c67aa7f",
            "https://trello.com/b/i4u41Lhr/analytics-sdr")
        
    })
})

#  ------------------------------------------------------------------------


