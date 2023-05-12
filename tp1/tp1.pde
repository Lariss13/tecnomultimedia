// Lacava Lara
// tp1, comision 1
// Legajo: 92825/2

PImage img1, img2, img3;
PFont t;
int pos, tama, px, py;
float cuenta;
String pantalla;

void setup() {
  size(640, 480);

  img1 = loadImage("nono1.jpg");
  img2 = loadImage("nono2.jpg");
  img3 = loadImage("nono3.jpg");

  pantalla = "inicio";
  pos = 480;
  cuenta = 0;
  px = 319;
  py = 237;

  t = loadFont("tipografia.vlw");
  textFont(t);
}
void draw() {
  background(0);
  if (frameCount%60==1) {
  }
  cuenta++;

  if (pantalla.equals("inicio")) {
    image(img1, 0, 0, 640, 480);
    fill(0);
    textSize(35);
    text("Nono, Cordoba. \nUn hermoso lugar para descansar \ncon la familia.", 50, pos);
    if (pos>= 150) {
      pos--;
    }
  } else if (pantalla.equals("segunda")) {
    image(img2, 0, 0, 640, 480);
    if (pos >= 55) {
      pos++;
    }
    text("pueblo Argentino con \npaisajes que enamoran<3", 70, 240);
    textSize(tama);
    if (tama<=35) {
      tama++;
    }
  } else if (pantalla.equals("tercera")) {
    image(img3, 0, 0, 640, 480);
    fill(0);
    textSize(35);
    text("¡¡No te pierdas la \noportunidad de unas maravillosas \nvacaciones en NoNo!!", pos, 160);
    if (pos>= 45) {
      pos--;
    }
  } else if (pantalla.equals("ultima")) {
    noStroke();
    fill(118, 57, 22);
    ellipse(319, 237, 150, 150);
    println(cuenta);
    textSize(40);
    text("Reiniciar", height/2, width/2, 313, 112);
  }

  if (cuenta < 250) {
    pantalla = "inicio";
  } else if (cuenta >= 250 && cuenta < 350) {
    pantalla = "segunda";
  } else if (cuenta >= 350 && cuenta < 450) {
    pantalla = "tercera";
  } else if ( cuenta >= 450 && cuenta < 600) {
    pantalla = "ultima";
  }
}

void mousePressed () {
  cuenta = 0;
}
