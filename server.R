library(shiny)
server<-function(input, output){
  output$myhist<-renderPlot({
    col<-as.numeric(input$var)
    hist(iris[,col],col=input$color, breaks=seq(0, max(iris[,col]),l=input$bins),xlab = names(iris[col]), main=paste0("Histogram of Iris dataset for ",names(iris[col])))
    
  })
  
}