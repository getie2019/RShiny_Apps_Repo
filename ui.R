library(shiny)

ui<-fluidPage(
  titlePanel(title="Histogram of Iris Data"),
  sidebarLayout(
    sidebarPanel(
      selectInput("var","select the iris datasets",choices = names(iris)[1:4]),
      radioButtons("color","select the color",choices = c("red","green","blue")),
      sliderInput("bins","increase or dicrease the bins",min = 2, max = 100, value = 10, step = 4)
    ),
    mainPanel(
      plotOutput("myhist")
    )
  )
)  