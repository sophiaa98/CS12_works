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
    color col;
    if (i >= 5) {
      int x = i / 5;
      i = i - x*5;
    }
    
    col = colors[i];
    stroke(0);
    strokeWeight(5);
    fill(col);
    circle(x, y, 100);
    i++;
  }
  
  void act() {
    x = x + random(-2, 2);
    y = y + random(-2, 2);
  }
}
