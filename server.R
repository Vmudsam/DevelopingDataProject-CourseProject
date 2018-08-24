#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
library(dplyr)
# select columns to be used in the analysis
cardata <- mtcars[,c(1:2,6,10)]
# Define server logic required to draw a plot
shinyServer(function(input, output) {
   output$distPlot <- renderPlot({
      # select diamonds depending of user input
      cardata <- filter(cardata, grepl(input$gear, gear), grepl(input$cyl, cyl))
      # build linear regression model
      fit <- lm( mpg~wt, cardata)
      # predicts the price 
      pred <- predict(fit, newdata = data.frame(wt = input$wt,
                                                gear = input$gear,
                                                cyl = input$cyl))
      # Drow the plot using ggplot2
      plot <- ggplot(data=cardata, aes(x=wt, y = mpg))+
         geom_point(aes(color = gear), alpha = 0.3)+
         geom_smooth(method = "lm")+
         geom_vline(xintercept = input$wt, color = "red")+
         geom_hline(yintercept = pred, color = "green")
      plot
   })
   output$result <- renderText({
      # renders the text for the prediction below the graph
      cardata <- filter(mtcars, grepl(input$gear, gear), grepl(input$cyl, cyl))
      fit <- lm( mpg~wt, cardata)
      pred <- predict(fit, newdata = data.frame(wt = input$wt,
                                                gear = input$gear,
                                                cyl = input$cyl))
      res <- paste(round(pred, digits = 2), "mpg")
      res
   })
   
})