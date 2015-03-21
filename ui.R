
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("How long will my commute take ?"),

  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      h4("When are you planning to leave ?"),
      div(c ("calculations are based on bing traffic statistics" ),
        radioButtons("start", label="Start from:",
                     choices=list("Home - Pasadena" = "home-to-work", "Work - Santa Monica" = "work-to-home"),
                     selected = "home-to-work"),
        selectInput("dow", label = "Day of the week", 
                    choices = list("Monday", "Tuesday", "Wednesday", 
                                   "Thursday", "Friday", "Saturday", "Sunday" ), selected = weekdays(Sys.Date()))
      ),
      div("Select the day of the week (defaults to today) and the direction of your commute. The graph on the right will update automatically")
   
    ),

    # Show a plot of the generated distribution
    mainPanel(
      div("The graph below shows a boxplot with the distribution of commute times during the selected day of week."),
      plotOutput("distPlot")
      #textOutput("mytext")
    )
  )
))
