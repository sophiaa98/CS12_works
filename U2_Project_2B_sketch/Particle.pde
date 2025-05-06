class Particle extends GameObject {
  float transparency;
  color col;
  
  Particle(PVector origin, PVector velocity, color c) {
    super(origin.copy(), velocity.copy());
    d = random(3, 6);
    transparency = 255;
    col = c;
  }

  void act() {
    loc.add(vel);
    transparency -= 5;
    if (transparency <= 0) {
      lives = 0;
    }
  }

  void show() {
    noStroke();
    fill(col, transparency);
    ellipse(loc.x, loc.y, d, d);
  }
}
