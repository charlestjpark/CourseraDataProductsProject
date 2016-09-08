library(shiny)

housingprice <- function(Size, Height) 500*Size + 2.5*(Height^3)*Size

shinyServer(
  function(input, output){
    output$Size <- renderPrint({input$Size})
    output$Height <- renderPrint({input$Height})
    output$prediction <- renderPrint({housingprice(input$Size, input$Height)})
  }
)
