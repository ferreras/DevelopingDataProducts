library(shiny)

npoints <- 100
t <- c(0:(npoints-1))/(npoints)

shinyServer(
    
    function(input, output, session) {
        observe({
            x <<- sin(2*pi*input$w1*t)
            x[npoints+1] <<- x[1]
        })
        observe({
            y <<- sin(2*pi*input$w2*t)
            y[npoints+1] <<- y[1]
        })
        output$curve <- renderPlot({ 
            
            # Movement
            invalidateLater(100,session)

            # Shift the curve
            auxiliar <- y[1]
            for (i in 1:npoints) {
                y[i] <<- y[i+1]
            }
            
            y[npoints+1] <<- y[1]
            
            
            # Close the curve
            
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
    }
)