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
    randomColor = (int) random(0, 3);
    col = colors[randomColor];
    stroke(0);
    strokeWeight(5);

    fill(col);
    circle(x, y, 100);
  }
  
  void act() {
    x = x + random(-2, 2);
    y = y + random(-2, 2);
  }
}
