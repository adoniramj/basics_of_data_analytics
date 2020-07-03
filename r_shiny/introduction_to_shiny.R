library(shiny)

ui <- fluidPage(
  
  plotOutput("hist"),
  sliderInput(inputId = "num",
              label = "Choose a number",
              value = 25, min = 1, max = 1000)
)

server <- function(input, output, session) {
  output$hist <- renderPlot({
    hist(rnorm(input$num))
    })
}
 
shinyApp(ui, server)