//Sophia Song
//Mar 4 2025

Mover[] myMovers;
int n = 5;
int randomSize = (int) random(0, 3);

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
