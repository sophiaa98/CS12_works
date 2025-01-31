//Sophia Song
//Jan 30 2025

void setup() {
  size(650, 600);
}

//void draw() {
//  rect(100, 0, 200, 400); //x, y, w, h
//  square( 100, 100, 200); //x, y, size
//  ellipse(200, 300, 100, 200); //x, y, w, h
//  circle(200, 300, 100); 
//  line(0, 0, width/2, height/2);
//  triangle(width/2, height/2, 0, 0, width, 0); //x1, y1, x2, y2, x3, y3
//  quad(0, 0, width, 0, width, height, 0, height);
//}

//void draw() {
//  fill(0); //or (255, 255, 255);
//  stroke(255);
//  strokeWeight(5);
//  square(100, 100, 100);
//  fill(100);
//  square(300, 300, 100);
//}

void draw() {
  background(#55BFD8);
  fill(#62B463);
  rect(0, 550, 650, 50);
  fill(#E8E8A2);
  rect(250, 300, 300, 300);
  fill(#A7A75B);
  triangle(250, 300, 550, 300, 400, 150);

  //windows
  fill(#CCF1FA);
  square(437.5, 400, 75);
  line(437.5, 437.5, 512.5, 437.5);
  line(475, 400, 475, 475);
  square(287.5, 400, 75);
  line(287.5, 437.5, 362.5, 437.5);
  line(325, 400, 325, 475);

  //door
  fill(#EDEDDA);
  rect(365, 490, 70, 110);
  fill(#DEDDBE);
  circle(375, 540, 10);

  //sun
  fill(#F2D56C);
  circle(100, 50, 70);
}
