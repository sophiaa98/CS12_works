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

String[] words = {"RED", "GREEN", "BLUE"};
color[] colors = {red, green, blue};

void setup() {
  size(500, 500);
  mode = A;
  textSize(100);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(0);
  if (mode == B) {
    b();
  } else if (mode == C) {
    c();
  } else {
    println("Mode error: " + mode);
  }
  button(410, 400, 255, 255);
  
  
  //game mode
  fill(colors[randomColor]);
  text(words[randomWord], width/2, height/2);
}

void button(int x, int y, color c, color cs){
  fill(c);
  stroke(cs);
  circle(x, y, 75);
}

void aClicks() {
  //if(dist(mouseX, mouseY, 50, 400) < 37.5) {
  //  mode = C;
  //}
  //else if(dist(mouseX, mouseY, 750, 400) < 37.5) {
  //  mode = B;
  //}
}
