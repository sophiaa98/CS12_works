//Sophia Song
//May 12 2025

float rotx, roty;
void setup() {
  size(800, 800, P3D);
  rotx = radians(45);
  roty = radians(45);
}

void draw() {
  background(255);
  
  translate(width/2, height/2, 0);
  rotateX(rotx);
  rotateY(roty);
  
  noFill();
  strokeWeight(3);
  sphere(300);
  
  //cube(width/2, height/2, 0, #FC2200, 200);
  //cube(0, 0, 0, #00C3FC, 200);
}

void cube(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);
  
  //noFill();
  rotateX(rotx);
  rotateY(roty);
  
  fill(c);
  stroke(0);
  strokeWeight(3);
  box(size); // W, H, D; side length
  popMatrix();
}

void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY) * 0.01;
  roty = roty + (pmouseX - mouseX) * -0.01;
}
