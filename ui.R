#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
   
   # Application title
   titlePanel("Miles per Gallon Prediction"),
   
   # Sidebar with options selectors 
   sidebarLayout(
      sidebarPanel(
         helpText("This application predicts the mpg of a car based on its characteristics."),
         h3("Please Select:"),
         numericInput("wt", label = h4("Weight (1000 lbs)"), step = 0.05, value = 3),
         selectInput("gear", label = h4("Number of Gears"), 
                     choices = list("3" = "3", "4" = "4",
                                    "5" = "5" )),
         selectInput("cyl", label = h4("Number of Cylinders"), 
                     choices = list("4" = "4", "6" = "6",
                                    "8" = "8"))
      ),
      
      # Show a plot with mile per gallon and regression line
      mainPanel(
         plotOutput("distPlot"),
         h3("Predicted mpg of this car is:"),
         h3(textOutput("result"))
      )
   )
))
