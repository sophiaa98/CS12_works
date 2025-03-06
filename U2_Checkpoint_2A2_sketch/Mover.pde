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
    randomSize = (int) random(50, 200);
    stroke(0);
    strokeWeight(5);
    circle(x, y, randomSize);
  }
  
  void act() {
    x = x + random(-2, 2);
    y = y + random(-2, 2);
  }
}
