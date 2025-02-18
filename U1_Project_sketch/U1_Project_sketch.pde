//Sophia Song
//Feb 12 2025

int mode;
final int A = 1;
final int B = 2;
final int C = 3;

int randomWord = (int) random(0, 3);
int randomColor = (int) random(0,3);

color red = #ff0000;
color green = #00ff00;
color blue = #0000ff;

int score;
float size = 40;

String[] words = {"RED", "GREEN", "BLUE"};
color[] colors = {red, green, blue};

void setup() {
  size(500, 500);
  mode = A;
  textSize(100);
  textAlign(CENTER, CENTER);
}

void draw() {
  if (mode == A) {
    a();
  } else if (mode == B) {
    b();
  } else if (mode == C) {
    c();
  } else {
    println("Mode error: " + mode);
  }

}

void button(int x, int y, color c, color cs){
  fill(c);
  stroke(cs);
  circle(x, y, 75);
}
