library(shiny)
library(markdown)
shinyUI(fluidPage(
        titlePanel("Text Prediction ..."),
        sidebarLayout(
                sidebarPanel(
                        helpText("Type one or two word input into the  box (all lowercase) and press 'Enter'."),
                        
                        textInput("word", "Input", value="<type here>"),
                        textOutput("text1"),
                        textOutput("text2"),
                        textOutput("text3"),
                        textOutput("word")
                ),
                      navbarMenu("About",
                           tabPanel("What is this?", includeMarkdown("app.md"))

        )
        )
))