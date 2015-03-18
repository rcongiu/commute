
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("How will my commute take ?"),

  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      h4("When are you planning to leave ?"),
      div(c ("calculations are based on a commute from Pasadena (home)" , 
             " to Santa Monica (work)"),
      radioButtons("start", label="Start from:",
                   choices= list("Home" = "home", "Work" = "work"),
                   selected = "home"),
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30))
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
