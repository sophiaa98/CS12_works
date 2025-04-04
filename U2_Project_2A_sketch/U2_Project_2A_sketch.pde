//Sophia Song
//Apl 1 2025

ArrayList<Mover> movers;
int numberOfMovers = 50;        //

void setup() {
  size(800, 800);
  movers = new ArrayList();  //instantiate array
  
  int i = 0;
  while (i < numberOfMovers) {  //
    movers.add(new Mover());
    i++;                        //
  }
}

void draw() {
  background(0);
  int i = 0;
  while (i < movers.size()) {
    Mover m = movers.get(i);
    m.act();
    m.showBody();
    m.showConnections();
    if (m.alive == false) {
      movers.remove(i);
    } else {
      i++;
    }
  }
}

void mouseReleased() {
}
