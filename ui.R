library(shiny)

shinyUI(
  pageWithSidebar(
    #Application title
    headerPanel("Rudimentary Housing Price Prediction Model"),

    sidebarPanel(
      numericInput('Size', 'Square Footage', 1000, min = 100, max = 10000, step = 5),
      numericInput('Height', 'Number of Storeys (Including Basement)', 2, min = 1, max = 4, step = 1),
      submitButton('Submit')
    ),

    mainPanel(
      h3('Illustrating Inputs'),
      h4('You entered a housing square footage of'),
      verbatimTextOutput("Size"),
      h4('The number of storeys you entered is'),
      verbatimTextOutput("Height"),
      h4('which resulted in a housing price prediction (in $CAD) of '),
      verbatimTextOutput("prediction")
    )
  )
)
