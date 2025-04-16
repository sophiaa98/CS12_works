class Bullet extends GameObject{
  
  int timer;
  
  Bullet() {
    super (player1.loc.copy(), player1.dir.copy());
    vel.setMag(10);
    timer = 60;
  }
  
  void show() {
    fill(0);
    stroke(255);
    strokeWeight(2);
    circle(loc.x, loc.y, 5);
  }
  
  void act() {
    loc.add(vel);
    wrapAround();
    timer--;
    if (timer == 0) lives = 0;
  }
}
