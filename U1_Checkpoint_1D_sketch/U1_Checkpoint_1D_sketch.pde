//Sophia Song
//Feb 5 2025

void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  shapes(0, 0);
}

void shapes(int x, int y) {
  while(y <= 600) {
    while(x <= 800) {
      part(x, y);
      x += 150;
    }
    y += 75;
  }
}

void part(int x, int y){
  triangle(x, y, x-50, y+25, x+50, y+25); 
  triangle(x-50, y+25, x+50, y+25, x, y+50);
}
void mousePressed() {
  
}

//void draw() {
//  if(mousePressed){
//    line(width/2, height/2, mouseX, mouseY);
//  }
  
//  if (dist(x, y, mouseX, mouseY) <200) { //circle button
    
//  }
  
//  rect(100, 100, 200, 100);
//  if(mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 200){  //rectangular button
//    stroke(0);
//  } 
//  else{
//    stroke(255);
//  }
    
//}

//void mousePressed() {
//  if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 200) {
//    bkg = bround;
//  }
//}

//void mouseReleased() {
//  line(width/2, height/2, mouseX, mouseY);
//}
