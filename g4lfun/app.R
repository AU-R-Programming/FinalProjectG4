#This is shiny web app for FinalProjectG4 package
#sign up: https://github.com/AU-R-Programming/FinalProjectG4


library(shiny)
library(g4lmfunc)

datacrop = read.csv("crop.data.csv")

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("FinalProjectG4"),



        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
    )


# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({

        
        resp = datacrop$yield
        pred = cbind(datacrop$density, datacrop$block, datacrop$fertilizer)
        fitlm_our = our_lm(resp, pred, alpha = 0.05)
        fitlm_our
        
        
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
