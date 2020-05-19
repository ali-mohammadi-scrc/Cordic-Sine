# Cordic-Sine

In this project the cordic algorithm is implemented in C to generate sine wave on an ATmega16. A Simulations of using it on ATmega16 in preoteus, 
and an implementation of cordic algorithm used to generate sine wave in Matlab are also available.
This was one of my course projects for Microprocessors.

# Using Instruction

This program has been written in CodeVisionAVR, so simply open AP.prj using CodeVisionAVR and complie it. Use the .hex file to program the microcontroller.

To run the simulation in preoteus, run the simulation and open digital oscilloscope from debug tab. 
Channel A (connected to port C) is the sine wave generated using a lookup table.
Channel B (connected to port D) is the sine wave generated using the cordic algorithm.

![See Simulation.jpg](/Simulation.jpg)

Also you can simply Cordic_Sine.m to see how cordic algorithm was used.