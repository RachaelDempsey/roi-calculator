#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


library(shiny)
library(bslib)
shinyUI(fluidPage(
  theme = bs_theme(bootswatch = "minty"),
  titlePanel("   Simple ROI Calculator"),
  sidebarLayout(
    sidebarPanel(
      h5("This is a simple tool to calculate the number of hours saved and cost-savings
        from automating a manual task."),
      br(),
      numericInput("num1", "Minutes spent doing something manually each week", 0),
      numericInput("num2", "Estimated annual salary for person whose time is saved", 0),
      numericInput("num3", "How many individuals are doing this?", 0)
    ),
    mainPanel(
      h4(strong("Calculated return on investment:")),
      h6("Number of hours saved (per year):"),
      textOutput("output1"),
      h6("Cost-savings (in salary per year):"),
      textOutput("output2"),
      br(),
      h6("*It's important to also consider that this doesn't include the ROI from your team being able to spend their time on other impactful projects rather than these manual tasks."),
      br(),
      h4(strong("Other tips for showing value generated:")),
      "Natalie O'Shea at BetterUp | Building a business case: ",
      tags$a(href="https://youtu.be/lhrbj14JpYQ?t=3127",
             "recording"),
      br(),
      "Tiger Tang at CARFAX | Quantifying the hours saved: ",
      tags$a(href="https://youtu.be/1A84E_GftnM",
             "recording"),
      br(),
      "Prabha Thanikasalam at Flex | Getting to the calculation of dollars: ",
      tags$a(href="https://youtu.be/Esrx4EedMFo?t=3178",
             "recording"),
      br(),
      "Posit Champion Site: ",
      tags$a(href="https://posit.co/champions/business-case/",
             "tips for building a business case")
      ),
    )))
