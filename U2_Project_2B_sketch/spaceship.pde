class Spaceship {
  //instance variables 
  PVector loc;  //location
  PVector vel;  //velocity 
  PVector dir;  //direction
  
  //constructor
  Spaceship() {
    loc = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    dir = new PVector(0.1, 0);
  }
  
  //behaviour functions
  void show() {
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(dir.heading());
    drawShip();
    popMatrix();
  }
  
  void drawShip() {
    fill(0);
    stroke(255);
    strokeWeight(2);
    triangle(-5, -15, -5, 15, 20, 0);
    line(-5, -15, 5, -15);
    line(-5, 15, 5, 15);
    strokeWeight(1);
    line(0, -12, 0, 12);
    strokeWeight(2);
    triangle(-10, -10, -10, 10, 30, 0);
    strokeWeight(1);
    line(-6, -8, -6, 8);
    line(-6, 0, 30, 0);
    strokeWeight(2);
    circle(5, 0, 6);
  }
  
  void act() {
    move();
    shoot();
    checkForCollisions();
  }
  
  void move() {
    loc.add(vel);
    if (upkey) vel.add(dir);
    if (leftkey) dir.rotate(-radians(3));
    if (rightkey) dir.rotate(radians(3));
    //around
    if (loc.x < 0) loc.x = width;
    if (loc.x >width) loc.x = 0;
    if (loc.y < 0) loc.x = height;
    if (loc.y < height) loc.x = 0;
  }
  
  void shoot() {
    //if (spacekey) bullets.add(new Bullet());
  }
  
  void checkForCollisions() {
  }
}
