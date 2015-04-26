source("predict.R")
shinyServer(
        function(input, output) {
                observe({
                        param <- input$word
                        prediction <- prediction(input$word) 
                        output$text1 <- renderText({ 
                                paste("Top Prediction:    ", prediction[1])
                        })
                })    
        }
)