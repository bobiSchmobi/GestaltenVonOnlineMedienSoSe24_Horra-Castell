GestaltenVonOnlineMedien SoSe24 by Tobias Horra and Sophie Castell


Description about the algorithm used:
The algorithm employs a recursive function to draw concentric circles, with each level of recursion drawing two smaller circles positioned at a calculated distance and angle from their parent circle. 
The radii of these circles decrease with each level, creating a fractal-like pattern. Two angles, angle1 and angle2, are incremented over time to animate the circles' movement. 
The recursion terminates when the number of levels (lvl) reaches zero.

Description about the technology used:
This code is written in Processing. 
The built-in functions such as size(), background(), ellipse(), line(), and color() facilitate drawing and animating shapes on the screen. 
As well we implemented our „own“ functions as drawCircles() and changeDirection()

Description about the end result:
The end result is an animated visual display of fractal-like patterns composed of concentric circles. 
For us it looks like an Orbit or a Planet. If you increase the Radius - so you basically zoom in -  it is a kind of trippy animation
