//Sophia Song
//Feb 5 2025

int mode;
final int A = 1;
final int B = 2;
final int C = 3;

color gray = #D6D6D6;
color white = #FFFFFF;
color dgray = #9B9999;

void setup() {
  size(800, 600);
  mode = A;
}

void draw() {
  background(white);
  shapes(0, 0);

  if (mode == B) {
    b();
  } else if (mode == C) {
    c();
  } else {
    println("Mode error: " + mode);
  }
}


void shapes(int x, int y) {
  
  while(y <= 600) {
    x = 0 - (y/75) * 75;
    while(x <= 850) {
      parta(x, y);
      partb(x, y);
      x += 300;
    }
    y += 100;
  }
}

//void shapes(int x, int y) {
//  while(y <= 600) {
//    x = 0 - (y/75) * 75;
//    while(x <= 850) {
//      parta(x, y);
//      x += 150;
//    }
//    y += 75;
//  }
//}

//void parta(int x, int y){
//  triangle(x, y, x-50, y+25, x+50, y+25); 
//  triangle(x-50, y+25, x+50, y+25, x, y+50);
//}

void parta(int x, int y) {
  fill(dgray);
  stroke(dgray);
  triangle(x, y, x+100, y+50, x+ 100, y+150);
  triangle(x, y, x, y+50, x+50, y+75); 
  triangle(x+50, y+75, x+50, y+125, x+100, y+150);
}

void partb(int x, int y) {
  fill(gray);
  stroke(gray);
  triangle(x+200, y, x+100, y+50, x+ 100, y+150);
  triangle(x+200, y, x+200, y+50, x+150, y+75); 
  triangle(x+150, y+75, x+150, y+125, x+100, y+150);
}


void mousePressed() {
  
}

void gameClicks() {
  if(dist(mouseX, mouseY, 100, 100) < 50) {
    mode = B;
  }
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
