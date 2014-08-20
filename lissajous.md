Lissajous Curves
========================================================
author: Antonio Ferreras
date: Wed Aug 20 22:37:51 2014
transition: rotate

<small>
COURSERA: Developing Data Products
</small>

Objectives
========================================================

- A tool to display pretty Lissajous curves
- Practice with <em>shiny</em> environment, different input gadgets
    - Especially use the timer, to achive a sense of movement
- Get the hang of the plot function, and how tha pparence can be change tunning the different parameters
- Have fun!

Lissajous Curves
========================================================

In mathematics, a [<u>Lissajous Curve</u>](https://en.wikipedia.org/wiki/Lissajous_curve), also known as Lissajous figure or Bowditch curve, is the graph of a system of parametric equations:

        x = sin(2*pi*w1*t)
        
        y = sin(2*pi*w1*t + phi)
        
which describe complex harmonic motion. This family of curves was investigated by Nathaniel Bowditch in 1815, and later in more detail by Jules Antoine Lissajous in 1857.

![Example of a Lissajous Curve](Oszilloskop.jpg)

)

Instructions
========================================================
- Several parameters can be changed in the plot
    - Type: dots, line, both, histogram, step (</em>try this one!)
    - Character of the dot, relative size, color
    - Type of the line, color
- One can select the frecuencies of the two movements (both are integers to get pretty displays)
    - w1 - for the x axis
    - w2 - for the y-axis
- The dephase (phi) is increased automatically to get a sense of movement

[<u>Click here to access the application</u>](http://ferreras.shinyapps.io/DevelopingDataProducts/)

A look to the application
========================================================

![alt text](ApplicationImage.PNG)
