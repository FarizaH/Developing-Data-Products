library(shiny)

ui <- fluidPage(
  
  titlePanel("Calculate area and cicumference of a circle"),
  sidebarLayout(
    sidebarPanel( 
           sliderInput("radius", "Radius of circle in cm",min = 1,max = 20,value = 10)
    ),
    mainPanel(
      h2("Results of Calculation"),
      h3("You entered radius in cm"),
      verbatimTextOutput("r"),
      h3("The area of the circle"),
      verbatimTextOutput("a"),
      h3("The circumference of the circle"),
      verbatimTextOutput("c")
    )
  )
)

