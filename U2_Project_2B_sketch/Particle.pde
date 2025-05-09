class Particle extends GameObject {
  float transparency;
  color col;
  float d;
  
  // Updated constructor
  Particle(PVector origin, PVector velocity, color c, boolean isThruster) {
    super(origin.copy(), velocity.copy());
    d = random(3, isThruster ? 6 : 8);
    transparency = 255;
    col = c;
    
    // gravity effect
    if (!isThruster) {
      vel.add(new PVector(random(-0.5f, 0.5f), random(-0.5f, 0.5f)));
    }
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
