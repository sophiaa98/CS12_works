void c() {
  int g = 0;
  int h = 0;
  background(255);
  
  while(h <= 800){
    g = 0 - h/ 25 * 45;
    while(g <= 800) {
      cparta(g, h);
      g += 90;
    }
    h += 25;
    g = 0;
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

void cparta(int x, int y) {
  stroke(#DECB8D);
  fill(#DECB8D);
  triangle(x, y, x+40, y-20, x+40, y+20);
  triangle(x+80, y, x+45, y-20, x+45, y+20);
}

void cClicks() {
  if(dist(mouseX, mouseY, 50, 400) < 37.5) {
    mode = B;
  }
  else if(dist(mouseX, mouseY, 750, 400) < 37.5) {
    mode = A;
  }
}
