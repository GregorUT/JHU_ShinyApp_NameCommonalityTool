library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(

  # Application title
  headerPanel("Commonality of US Names"),

  sidebarPanel( textInput("bName", label = h3("Birth Name"), value = ""),
                radioButtons("radio", label = h3("Gender"),
                             choices = list("Female" = "F", "Male" = "M"), 
                             selected = 1),
                actionButton("goButton", "Go!"),
               tags$hr(),
               tags$a(href="http://gregorut.github.io/NameCommonalityDocs/", "Name Commonality Tool Help")
  ),

  mainPanel(
          
          plotOutput("plot1", width = 400, height = 300)
  )

  ) 
)
