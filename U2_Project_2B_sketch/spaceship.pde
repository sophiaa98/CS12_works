class Spaceship extends GameObject{
  
  //instance variables 
  PVector dir;  //direction
  int cooldown;
  int life;
  int lifeTimer;  // counts down after being hit

  
  //constructor
  Spaceship() {
    super(width/2, height/2, 0, 0);
    dir = new PVector(0.2, 0);
    cooldown = 0;
    life = 3;
    lifeTimer = 0;
  }
  
  //behaviour functions
  void show() {
    //pushMatrix();
    //translate(loc.x, loc.y);
    //rotate(dir.heading());
    //drawShip();
    //popMatrix();
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(dir.heading());
    if (lifeTimer % 10 < 5) {  // Flashing effect
      drawShip();
    }
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
    wrapAround();
  }
  
  void move() {
    loc.add(vel);
    if (upkey) vel.add(dir);
    if (downkey) vel.sub(dir);
    if (leftkey) dir.rotate(-radians(3));
    if (rightkey) dir.rotate(radians(3));
    
    if (!downkey) {
      vel.mult(0.97);
    }
    vel.limit(10);
  }
  
  void shoot() {
    cooldown--;
    if (spacekey && cooldown <= 0) {
      objects.add(new Bullet());
      cooldown = 30;
    }
  }
  
  void checkForCollisions() {
  if (lifeTimer > 0) {
    lifeTimer--;
    return;
  }

  for (int i = objects.size() - 1; i >= 0; i--) {
    GameObject obj = objects.get(i);
    
    if (obj == this) continue;
    
    boolean hitByAsteroid = obj instanceof Asteroid && dist(loc.x, loc.y, obj.loc.x, obj.loc.y) < d/2 + obj.d/2;
    boolean hitByEnemyBullet = obj instanceof Bullet && obj != this && dist(loc.x, loc.y, obj.loc.x, obj.loc.y) < d/2 + obj.d/2;

    if (hitByAsteroid || hitByEnemyBullet) {
      life--;
      lifeTimer = 120;  // 2 seconds at 60fps
      if (life <= 0) {
        mode = GAMEOVER;
      }
      return;  // only handle one hit per frame
    }
  }
}

}
