
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)


data <- read.csv("data/data.csv", header=TRUE,sep="\t" )
data$dow <- weekdays(as.Date(data$dt))
data$dow <- weekdays(as.Date(data$dt))

# find dates bound for data
dtf <- levels(data$dt)
dtfl <- sort(dtf)

gethm <-function( hour, minute ) {
  paste0( formatC(as.numeric(hour),width=2,flag="0"),":", formatC(as.numeric(minute),width=2,flag="0"))
} 

shinyServer(function(input, output) {

  output$distPlot <- renderPlot({

    # select data for the right time interval (+/- hr)
    # and for the right commute, and day of week.
    d <- data[data$route ==input$start,]
    d <- d[d$dow == input$dow,]
    
    boxplot(travelDurationTraffic/60  ~ hour, 
          xlab = "Hour in the day", ylab = "Travel time (minutes)",
          data = d)

  })
  

})
