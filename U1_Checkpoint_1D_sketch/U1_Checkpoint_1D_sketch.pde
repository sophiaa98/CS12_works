//Sophia Song
//Feb 5 2025

int mode;
final int A = 1;
final int B = 2;
final int C = 3;

color gray = #D6D6D6;
color gwhite = #F0F0F0;
color dgray = #9B9999;

void setup() {
  size(800, 800);
  mode = A;
}


void draw() {
  background(gwhite);
  shapes(0, -75);

  if (mode == B) {
    b();
  } else if (mode == C) {
    c();
  } else {
    println("Mode error: " + mode);
  }
  
    //button
  if(dist(mouseX, mouseY, 50, 400) < 37.5) {
    fill(gwhite);
    stroke(dgray);
    circle(50, 400, 75);
    fill(#646464);
    textSize(50);
    text("<", 35, 415);
  }
  else{
    fill(255);
    stroke(0);
    circle(50, 400, 75);
    fill(0);
    textSize(50);
    text("<", 35, 415);
  }
  if(dist(mouseX, mouseY, 750, 400) < 37.5) {
    fill(gwhite);
    stroke(dgray);
    circle(750, 400, 75);
    fill(#646464);
    textSize(50);
    text(">", 740, 415);
  }
  else{
    fill(255);
    stroke(0);
    circle(750, 400, 75);
    fill(0);
    textSize(50);
    text(">", 740, 415);
  }
}


void shapes(int x, int y) {
  
  while(y <= 800) {
    x = 0 - (y/75) * 150;
    while(x <= 850) {
      parta(x, y);
      partb(x, y);
      x += 300;
    }
    y += 75;
  }
}

//void shapes(int x, int y) {
//  while(y <= 800) {
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


//void mousePressed() {
//  if(dist(mouseX, mouseY, 750, 400) < 37.5) {
//    mode = B;
//  }
  
//  if(dist(mouseX, mouseY, 50, 400) < 37.5) {
//    mode = C;
//  }
//}


void aClicks() {
  if(dist(mouseX, mouseY, 50, 400) < 37.5) {
    mode = C;
  }
  else if(dist(mouseX, mouseY, 750, 400) < 37.5) {
    mode = B;
  }
}
