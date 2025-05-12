//class Bullet extends GameObject{
  
//  int timer;
  
//  Bullet() {
//    super (player1.loc.copy(), player1.dir.copy());
//    //vel = new PVector(mouseX-loc.x, mouseY - loc.y);
//    vel.setMag(10);
//    //vel.add(player1.vel);
//    timer = 60;
//    d = 5;
//  }
  
//  void show() {
//    fill(0);
//    stroke(255);
//    strokeWeight(2);
//    circle(loc.x, loc.y, d);
//  }
  
//  void act() {
//    loc.add(vel);
//    wrapAround();
//    timer--;
//    if (timer == 0) lives = 0;
//  }
//}

class Bullet extends GameObject {
  int timer;
  boolean fromPlayer;

  Bullet() {
    super(player1.loc.copy(), player1.dir.copy());
    vel.setMag(10);
    timer = 60;
    d = 5;
    fromPlayer = true; // Player bullets are marked true ~
  }

  Bullet(PVector loc, PVector vel, boolean fromPlayer) {
    super(loc, vel);
    this.vel.setMag(10);
    this.fromPlayer = fromPlayer; // UFO bullets are marked false
    timer = 60;
    d = 5;
  }

  void show() {
    stroke(fromPlayer ? color(255) : color(255, 0, 0));
    strokeWeight(2);
    fill(0);
    circle(loc.x, loc.y, d);
  }

  void act() {
    loc.add(vel);
    wrapAround();
    timer--;
    if (timer <= 0) lives = 0;
  }
}
