class UFO extends GameObject {

  int fireCooldown;
  boolean entering;
  PVector target;
  
  UFO() {
    super(0, 0, 0, 0);
    spawnFromEdge();
    fireCooldown = 60;
  }

  void spawnFromEdge() {
    int edge = int(random(4));
    float speed = 2;
    
    if (edge == 0) { // left to right
      loc = new PVector(0, random(height));
      vel = new PVector(speed, 0);
    } else if (edge == 1) { // right to left
      loc = new PVector(width, random(height));
      vel = new PVector(-speed, 0);
    } else if (edge == 2) { // top to bottom
      loc = new PVector(random(width), 0);
      vel = new PVector(0, speed);
    } else if (edge == 3) { // bottom to top
      loc = new PVector(random(width), height);
      vel = new PVector(0, -speed);
    }
  }

  void act() {
    loc.add(vel);
    fireCooldown--;
    if (fireCooldown <= 0) {
      fireAtPlayer();
      fireCooldown = 90;
    }
    if (isOffScreen()) {
      lives = 0;
    }
    checkForHits();
  }

  void fireAtPlayer() {
    if (player1 == null) return;
    PVector bulletDir = PVector.sub(player1.loc, loc).normalize().mult(6);
    Bullet b = new Bullet(loc.copy(), bulletDir, false); // false = enemy bullet
    objects.add(b);
  }

  void checkForHits() {
    for (int i = objects.size() - 1; i >= 0; i--) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        Bullet b = (Bullet)obj;
        if (b.fromPlayer && dist(loc.x, loc.y, b.loc.x, b.loc.y) < d/2 + b.d/2) {
          lives = 0;
          b.lives = 0;
        }
      }
    }
  }

  boolean isOffScreen() {
    return loc.x < -50 || loc.x > width + 50 || loc.y < -50 || loc.y > height + 50;
  }

  void show() {
    fill(#40D7FF);
    stroke(0);
    ellipse(loc.x, loc.y, 40, 40);
    fill(0);
    ellipse(loc.x, loc.y, 30, 30);
    fill(#40D7FF);
    ellipse(loc.x, loc.y, 20, 20);
    

  }
}
