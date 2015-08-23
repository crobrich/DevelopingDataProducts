pressure<-function(m,tc,v) (m*1000.0/32.0)*0.0821*(tc+273.0)/v
shinyServer(
  function(input, output){
    output$m<-renderPrint({input$m})
    output$tc<-renderPrint({input$tc})
    output$v<-renderPrint({input$v})
    output$p<-renderPrint({pressure(input$m,input$tc,input$v)})
  }
    )