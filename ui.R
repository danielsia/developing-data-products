library(shiny)

shinyUI(pageWithSidebar(
        
        headerPanel("Determining your weight status"),
        
        sidebarPanel(
                
                sliderInput('height', 'Your Height (in metres)', min=1.5, max=2.0,
                            value=1.7, step=0.01),
                numericInput('weight', 'Your Weight (to the nearest kg)', 70, min=40, max=120, step = 1),
                submitButton('Submit')
                ),
        
        mainPanel(
                h3('Your weight status'),
                h4('Since your height is'),
                verbatimTextOutput("inputheight"),
                h4('and your weight is'),
                verbatimTextOutput("inputweight"),
                h4('Your Body Mass Index (BMI) is'),
                verbatimTextOutput("bmi"),
                h4('So your weight status is'),
                verbatimTextOutput("status")        
        )
))
