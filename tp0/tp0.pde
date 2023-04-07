//Lacava Lara
//tp0
//legajo 92825/2

size(800, 400);

noStroke();

fill(240, 145, 44);
rect(0, 0, 400, 200);

fill(180, 95, 42);
rect(0, 120, 400, 200);

fill(147, 71, 21);
rect(0, 170, 400, 200);

fill(193, 117, 66);
rect(0, 200, 400, 200);

fill(234, 110, 26);
rect(0, 250, 400, 200);

fill(252, 217, 10);
circle(100, 100, 60);

fill(0, 0, 0);
rect(185, 200, 150, 35);

fill(0, 0, 0);
ellipse(225, 200, 20, 37);

fill(0, 0, 0);
ellipse(290, 200, 20, 55);

PImage paisaje;
paisaje = loadImage ("atardecer.jpg");
image(paisaje, 400, 0, 400, 400);
