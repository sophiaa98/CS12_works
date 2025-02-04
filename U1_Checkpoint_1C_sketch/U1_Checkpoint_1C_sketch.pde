//Sophia Song
//Feb 4 2025

color beige = #fdf0d5;
color red = #D11E1E;
color black = #171A1A;
color blue = #55AED8;
color white = #FCFCFC;

void setup() {
  size(800, 600);
}

void draw() {
  background(beige);

  face(100, 100, 0.5); //x, y
  face(400, 400, 0.5);
  face(100, 400, 0.5);
  face(400, 100, 0.5);
}


void face(int x, int y, float s) {
  pushMatrix();
  translate(x, y);
  //rotate(PI/4);
  scale(s);
  skin();
  hair();
  eye(100, 200);  //left
  eye(300, 200);  //right
  mouth();
  popMatrix();
}

void skin() {
  fill(blue);
  stroke(black);
  strokeWeight(3);
  rect(0, 0, 400, 400);
}

void hair() {
  strokeWeight(25);
  int x = 0;
  while (x <= 400) {
    line(x, -50, x, 50);
    x = x + 50;
  }
}

void eye(int x, int y) {
  strokeWeight(3);
  fill(white);
  ellipse(x, y, 100, 50);
  fill(red);
  circle(x, y, 50);
  fill(black);
  circle(x, y, 25);
}

void mouth() {
  fill(white);
  rect(100, 250, 200, 100);
  line(100, 300, 300, 300);
  line(150, 250, 150, 350);
  line(200, 250, 200, 350);
  line(250, 250, 250, 350);
}
