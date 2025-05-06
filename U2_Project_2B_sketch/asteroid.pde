class Asteroid extends GameObject {

  float rotSpeed, angle;
  int size; // 3 = big, 2 = medium, 1 = small
  PVector[] shape; // for jagged appearance

  Asteroid(float x, float y, int size) {
    super(x, y, 1, 1);
    this.size = size;
    lives = size;
    d = size * 40;
    vel.setMag(random(1, 3));
    vel.rotate(random(TWO_PI));
    rotSpeed = random(-0.05, 0.05);
    angle = random(TWO_PI);
    generateShape();
  }

  // Constructor for random spawning
  Asteroid() {
    this(random(width), random(height), 3);
  }

  void generateShape() {
    int points = int(random(7, 13));
    shape = new PVector[points];
    for (int i = 0; i < points; i++) {
      float theta = map(i, 0, points, 0, TWO_PI);
      float r = d / 2 * random(0.7, 1.2);
      shape[i] = new PVector(r * cos(theta), r * sin(theta));
    }
  }

  void show() {
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(angle);
    noFill();
    stroke(255);
    beginShape();
    for (PVector pt : shape) {
      vertex(pt.x, pt.y);
    }
    endShape(CLOSE);
    popMatrix();
  }

  void act() {
    loc.add(vel);
    angle += rotSpeed;
    wrapAround();
    checkForCollisions();
  }

  void checkForCollisions() {
    for (int i = objects.size() - 1; i >= 0; i--) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (dist(loc.x, loc.y, obj.loc.x, obj.loc.y) < d/2 + obj.d/2) {
          split();
          lives = 0;
          obj.lives = 0;
        }
      }
    }
  }

  void split() {
    if (size > 1) {
      for (int i = 0; i < 2; i++) {
        Asteroid child = new Asteroid(loc.x, loc.y, size - 1);
        objects.add(child);
      }
    }
  }
}
