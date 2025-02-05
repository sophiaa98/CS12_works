//Sophia Song
//Feb 4 2025

color beige = #fdf0d5;
color yellow = #F0F26E;
color black = #171A1A;
color blue = #8FC7E0;
color white = #FCFCFC;

void setup() {
  size(800, 600);
}

void draw() {
  background(beige);

  house(125, 50, 0.5); //x, y
  house(425, 350, 0.5);
  house(125, 350, 0.5);
  house(425, 50, 0.5);
}


void house(int x, int y, float s) {
  pushMatrix();
  translate(x, y);
  //rotate(PI/4);
  scale(s);
  wall();
  fence();
  window(50, 100);  //left
  window(250, 100);  //right
  door();
  popMatrix();
}

void wall() {
  fill(blue);
  stroke(black);
  strokeWeight(3);
  rect(0, 0, 400, 400);
}

void fence() {
  strokeWeight(10);
  int x = 0;
  while (x <= 400) {
    line(x, -50, x, 30);
    x = x + 50;
  }
}

void window(int x, int y) {
  strokeWeight(3);
  fill(white);
  rect(x, y, 100, 100);
  fill(yellow);
  rect(x+20, y+20, 60, 60);
}

void door() {
  fill(white);
  rect(150, 250, 100, 150);
  fill(yellow);
  circle(175, 325, 20);
}
