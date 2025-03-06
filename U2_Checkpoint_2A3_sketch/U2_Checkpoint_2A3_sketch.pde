//Sophia Song
//Mar 4 2025

Mover[] myMovers;
int i = 0;
int n = 10;
color red = #D34026;
color green = #60C140;
color blue = #3E94CB;
color yellow = #F0DB22;
color white = #FFFFFF;
color[] colors = {red, green, blue, yellow, white};
int randomColor = (int) random(0, 5);

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
  int i = 0;
  while (i < n) {
    myMovers[i].act();
    myMovers[i].show();
    i++;
  }
}
