class Bullet {
  PVector loc;
  PVector vel;
  
  Bullet() {
    loc = new PVector(player1.loc.x, player1.loc.y);
    vel = player1.dir.copy();
    vel.setMag(10);
  }
  
  void show() {
    fill(0);
    stroke(255);
    strokeWeight(2);
    circle(loc.x, loc.y, 5);
  }
  
  void act() {
    loc.add(vel);
  }
}
