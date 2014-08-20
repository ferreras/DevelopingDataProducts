##
## Lissajous Curves Generator using Shiny
##
## The objective of this project is to learn the capacities of shiny package and 
## R presenter. Moreover, a tool for the management of multiple parameter of the
## "plot" function with the look of the final aspect has been achieved
##
## Lissajous Curves are defined as the graph of a system of parametric equations
## which describe complex harmonic motion
##
## x= sin(2*pi*w1*t) y = sin(2*pi*w2*t*phi)
##
## Application deployed at:
## http://ferreras.shinyapps.io/DevelopingDataProducts
##
## Antonio Ferreras - 2014
##

shinyUI(fluidPage(
    titlePanel("Developing Data Products"),
    sidebarLayout(
        position = "right",
        
        ## Let's choose the ddifferent parameters of the plot function
        sidebarPanel(
            selectInput("type", label = p("Type of plot"), 
                        choices=list("points" = "p",
                                     "lines"= "l",
                                     "both" = "b",
                                     "overplotted" = "o",
                                     "histogram" ="h",
                                     "stair steps" = "s"),
                        selected = "b"),
            selectInput("lty", label = p("Line type"), 
                        choices=list("solid"= 1,
                                     "dashed" = 2,
                                     "dotted" = 3,
                                     "dotdash" = 4,
                                     "longdash" = 5,
                                     "twodash" = 6),
                        selected = 1),
            selectInput("col", label = "Color", 
                        choices=list("blue" = "blue",
                                     "red" = "red",
                                     "green" = "green",
                                     "red" = "red",
                                     "orange" = "orange",
                                     "violet" = "violet",
                                     "brown" = "brown",
                                     "grey" = "grey"),
                        selected = 1),
            
            sliderInput('pch', label= 'Point Character', value = 1, min = 0, max = 25, step = 1),
            sliderInput('cex', 'Point magnifying', value = 1, min = 0.4, max = 3, step= 0.2),
            sliderInput('lwd', 'Line width', value = 1, min = 1, max = 4, step= 0.25)
        ),
        
        mainPanel(
            plotOutput("curve"),
            fluidRow(  # Let's put the two frecuencies in the same row
                column(6, 
                       sliderInput('w1', 'w1', value = 2, min = 1, max = 10, step = 1)
                       ),
                column(6,
                       sliderInput('w2', 'w2', value = 5, min = 1, max = 10, step = 1)                       )
            )
        )
    )
))