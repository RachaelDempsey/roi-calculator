#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyServer(function(input, output) {
  output$output1 <- renderText({
    y <- input$num1 * 52 / 60 * input$num3
    y <- round(y, 1)
  })
  output$output2 <- renderText({
     x <- (input$num2 / 124800) * (input$num1) * 52 * input$num3
     x <- paste0("$",round(x, 2))
     prettyNum(x, big.mark =",")

  })

})
