color light = #DCE6E8;
color dark = #909DA0;
color darker = #4B585A;

void b() {
  int e = 0;
  int f = -80;
  background(0);
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

  while(f <= 800) {
    e = 0 - f / 80 * 40;
    while(e <= 800) {
      bshapes(e, f);
      e += 80;
    }
    f += 80;
    e = 0;
  }

}

//triangle 1
void bparta(int x, int y, color c) {
  stroke(c);
  fill(c);
  triangle(x, y, x-40, y+80, x, y+60);
}

//triangle 2
void bpartb(int x, int y, color c) {
  stroke(c);
  fill(c);
  triangle(x, y, x+40, y+80, x, y+60);
}

//triangle 3
void bpartc(int x, int y, color c) {
  stroke(c);
  fill(c);
  triangle(x-40, y+80, x, y+60, x+40, y+80);
}

//triangle 4
void bpartd(int x, int y, color c) {
  stroke(c);
  fill(c);
  triangle(x-40, y+80, x, y+160, x, y+100);
}

//triangle 5
void bparte(int x, int y, color c) {
  stroke(c);
  fill(c);
  triangle(x, y+100, x, y+160, x+40, y+80);
}

//triangle 6
void bpartf(int x, int y, color c) {
  stroke(c);
  fill(c);
  triangle(x-40, y+80, x, y+100, x+40, y+80);
}


//triangle group
void bshapes(int x, int y) {
  bparta(x, y, dark);
  bpartb(x, y, light);
  bpartc(x, y, darker);
  bpartd(x, y, dark);
  bparte(x, y, darker);
  bpartf(x, y, light);
  //triangleMode(CENTER);
  //pushMatrix();
  //translate(400, 400);
  //rotate(PI);
  //bparta(0, 0, darker);
  //bpartb(0, 0, dark);
  //bpartc(0, 0, light);
  //popMatrix();
}


void bClicks() {
  if(dist(mouseX, mouseY, 50, 400) < 37.5) {
    mode = A;
  }
  else if(dist(mouseX, mouseY, 750, 400) < 37.5) {
    mode = C;
  }
}
