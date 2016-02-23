library(shiny)
library(ggplot2)
usNames <- read.csv('NationalNames.csv')

# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {
        output$plot1 <- renderPlot({
                input$goButton
                dfNames <- subset(usNames, Name == input$bName)
                dfFinal <- subset(dfNames, Gender == input$radio)
                PeakYear <- dfFinal$Year[which(dfFinal$Count == max(dfFinal$Count))]
                g<- ggplot(data = dfFinal, aes(Year, Count)) + geom_line()
                g<- g+geom_vline(xintercept = PeakYear)
                SumText <- paste("The name hit a peak in the year", PeakYear, sep = " ")
                g<- g+labs(x="Year", title = SumText)
               g
                
        })
                
        
        
})

