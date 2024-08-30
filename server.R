library(shiny)
server<-function(input, output){
  output$myhist<-renderPlot({
    variables<-input$var
    hist(iris[[variables]],col=input$color, breaks=seq(0, max(iris[variables]),l=input$bins),xlab = names(iris[variables]), main=paste0("Histogram of Iris dataset for ",names(iris[variables])))
    
  })
  
}