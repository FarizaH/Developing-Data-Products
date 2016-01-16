library(shiny)

calcArea<-function(r) {3.14*r*r}

calcCircum<-function(r) {2*3.14*r}

server <- function(input, output) {
  output$r<-renderPrint(input$radius)
  output$a<-renderPrint(calcArea(input$radius))
  output$c<-renderPrint(calcCircum(input$radius))
}                            
shinyApp(ui = ui, server = server)
