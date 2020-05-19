# Cordic-Sine

This project is an implementation of the [cordic algorithm](https://en.wikipedia.org/wiki/CORDIC) in C to generate sine wave on an ATmega16. A Simulations of using it on ATmega16 in preoteus, 
and an implementation of cordic algorithm used to generate sine wave in Matlab are also available.
This was one of my course projects for Microprocessors.

# Using Instruction

This program has been written in CodeVisionAVR, so simply open AP.prj using CodeVisionAVR and complie it. Use the .hex file to program the microcontroller.

To run the simulation open Simulation.DSN in preoteus, run the simulation and open digital oscilloscope from debug tab. 
Channel A (connected to port C) is the sine wave generated using a lookup table.
Channel B (connected to port D) is the sine wave generated using the cordic algorithm.

![See Simulation.jpg](/Simulation.JPG)

Also you can simply Cordic_Sine.m to see how cordic algorithm was used.
