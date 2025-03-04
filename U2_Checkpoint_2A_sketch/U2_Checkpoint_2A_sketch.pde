//Sophia Song
//Mar 4 2025

Mover[] myMovers;
int n = 50;
color red = #D34026;
color green = #60C140;
color blue = #3E94CB;
color[] colors = {red, green, blue};
int randomColor = (int) random(0, 3);

void setup() {
  size(600, 600);
  myMovers = new Mover[n];
  //myMovers[0] = new Mover();
  int i = 0;
  while (i < n) {
    myMovers[i] = new Mover();
    i++;
  }
}

void draw() {
  background(0);
  int i = 0;
  while (i < n) {
    myMovers[i].act();
    myMovers[i].show();
    i++;
  }
}
