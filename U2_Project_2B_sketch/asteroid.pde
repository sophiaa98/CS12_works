class Asteroid extends GameObject {
  Asteroid() {
    super(random(0, width), random(height), 0, 0);
    lives = 3;
  }
  
  void show() {
    fill(0);
    stroke(255);
  }
  
  void act() {
    
  }
  
}
