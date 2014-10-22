library(shiny)

bmi <- function(weight, height) (weight/height^2)
weightstatus <- function(bmi) 
        if (bmi < 18.5) {
        "Underweight"
        } else if (18.5 <= bmi && bmi <= 24.9) {
        "Normal"       
        } else if (25.0 <= bmi && bmi <= 29.9) {
        "Overweight"
        } else {
        "Obese"       
        }

shinyServer(function(input, output) {
     output$inputheight <- renderPrint({input$height})
     output$inputweight <- renderPrint({input$weight})
     output$bmi <- renderPrint({bmi(input$weight,input$height)})
     output$status <- renderPrint({weightstatus(bmi(input$weight,input$height))})
})