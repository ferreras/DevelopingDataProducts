library(shiny)

npoints <- 200
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
            
            # Movement (each 500 ms let's change phi)
            # More speed causes problems in the server
            invalidateLater(500,session)

            # Shift the curve
            auxiliar <- y[1]
            for (i in 1:npoints) y[i] <<- y[i+1]
            y[npoints+1] <<- y[1]
            
            # Let's plot
            plot(x, y, asp= 1, type = input$type, pch = input$pch,
                 cex = input$cex, lwd = input$lwd, col=input$col,
                 lty = as.numeric(input$lty), bty = input$bty,
                 main = "Lissajous Curves", xlab = "X Axis", ylab = "Y Axis")
        })
    }
)