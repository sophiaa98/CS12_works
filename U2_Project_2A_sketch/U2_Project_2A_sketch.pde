//Sophia Song
//Apl 1 2025

Mover[] movers;
int numberOfMovers = 50;

void setup() {
  size(800, 800);
  movers = new Mover [numberOfMovers];  //instantiate array
  
  int i = 0;
  while (i < numberOfMovers) {
    movers[i] = new Mover();
    i++;
  }
}

void draw() {
  background(0);
  int i = 0;
  while (i < numberOfMovers) {
    movers[i].act();
    movers[i].showBody();
    movers[i].showConnections();
    i++;
  }
}
