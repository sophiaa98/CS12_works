class Mover {
  
  //instance variables
  float x, y;
  

  //constructor
  Mover() {
    x = width/2;
    y = height/2;
  }
  
  //behaviour functions
  void show() {
    if (i >= 5) {
      int x = i / 5;
      i = i - x*5;
    }
    stroke(0);
    strokeWeight(5);
    circle(x, y, i*30+50);
    i++;
  }
  
  void act() {
    x = x + random(-2, 2);
    y = y + random(-2, 2);
  }
}
