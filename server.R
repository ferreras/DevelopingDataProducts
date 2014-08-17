library(shiny)

npoints <- 100
t <- c(0:npoints-1)/npoints
w1 = 2
w2 = 5
x = sin(2*pi*w1*t)
y = cos(2*pi*w2*t)


    

shinyServer(
    function(input, output, session) {
        output$curve <- renderPlot({ 
            x = sin(2*pi*input$w1*t)
            y = cos(2*pi*input$w2*t+input$phi)
            x <- jitter(x)
            y <- jitter(y)
            plot(x,y, asp= 1,
                 type = input$type,
                 pch = input$pch,
                 lty = as.numeric(input$lty),
                 family=input$family,
                 bty = input$bty,
                 main = "Main Text",
                 xlab = "X Label",
                 ylab = "Y Label",
                 las = input$las
                )
        })
        phi <- renderText({
            invalidateLater(1000, session)
            phi <- phi +1
            phi
        })
#        y <<- y + 1
#        output$text1 <- renderText({input$type})
#        output$text2 <- renderText({input$text2})
#        output$text3 <- renderText({as.numeric(input$text1)+1})
#         output$text4 <- renderText(type1)
#         output$text5 <- renderText(lty1)
    }
)