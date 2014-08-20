# http://ferreras.shinyapps.io/Lissajous/

shinyUI(fluidPage(
    titlePanel("Lissajous Curves"),
    sidebarLayout(
        position = "right",
        sidebarPanel(
            selectInput("type", label = p("Type of plot"), 
                        choices=list("points" = "p",
                                     "lines"= "l",
                                     "both" = "b",
                                     "overplotted" = "o",
                                     "histogram" ="h",
                                     "stair steps" = "s"),
                        selected = "l"),
            selectInput("lty", label = p("Line type"), 
                        choices=list("solid"= 1,
                                     "dashed" = 2,
                                     "dotted" = 3,
                                     "dotdash" = 4,
                                     "longdash" = 5,
                                     "twodash" = 6),
                        selected = 1),
            selectInput("family", label = "Font Family", 
                        choices=list("serif" = "serif",
                                     "sans" = "sans",
                                     "script" = "script",
                                     "mono" = "mono"),
                        selected = 1),
            
            selectInput("bty", label = p("Box type"), 
                        choices=list("o"= "o",
                                     "l" = "l",
                                     "7" = "7",
                                     "c" = "c",
                                     "u" = "u",
                                     "]" = "]",
                                     "none" = "n"),
                        selected = "o"),
            selectInput("las", label = p("Style of axis labels"), 
                        choices=list("Parallel"= 0,
                                     "Horizontal" = 1,
                                     "Perpendicular" = 2,
                                     "Vertical" = 3),
                        selected = 0),
            sliderInput('pch', 'pch', value = 1, min = 0, max = 25, step = 1),
            
            textInput(inputId="text1", label = "Input Text1"),
            textInput(inputId="text2", label = "Input Text2")
        ),
        
        mainPanel(
            plotOutput("curve"),
            sliderInput('w1', 'w1', value = 2, min = 1, max = 10, step = 1),
            sliderInput('w2', 'w2', value = 1, min = 1, max = 10, step = 1),
            sliderInput('phi', 'phi',value = 0, min = 0, max = pi, step = pi/40),
            p('Output text1'),
            textOutput('lty'),
            p('Output text2'),
            textOutput('type')
        )
    )
))