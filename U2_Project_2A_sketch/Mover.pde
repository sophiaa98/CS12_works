class Mover {
  
  //instance variables
  float x, y;
  float vx, vy;
  float d;
  
  Mover() {
    d = 100;
    x = random(0, width);
    y = random(0, height);
    vx = random(-1, 1);
    vy = random(-1, 1);
  }
  
  void act() {
    move();
    bounceOfEdge();
  }
  
  void move() {
    x = x + vx;
    y = y + vy;
  }
  
  void bounceOfEdge() {
    if (x < 0 || x > width) vx = -vx;
    if (y < 0 || y > height) vy = -vy;
  }
  
  void showBody() {
    noStroke();
    fill(244, 50);
    circle(x, y, d);
  }
  
  void showConnections() {
    int i = 0;
    while (i < numberOfMovers) {
      float dist = dist(x, y, movers[i].x, movers[i].y);
      if (dist <= 200) {
        float a = map(dist, 0, 200, 255, 0);
        stroke(255, a);
        strokeWeight(2);
        line(x, y, movers[i].x, movers[i].y);
      }
      i++;
    }
  }
}
