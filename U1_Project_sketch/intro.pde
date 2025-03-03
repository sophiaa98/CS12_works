void a() {
  EBGM.pause();
  BGM.play();
  pressMATCH = false;
  pressDONTMATCH = false;
  life = 1;
  score = 0;
  image(gif[f], 0, 0, width, height);
  f = f + 1;
  if (f == numberOfFrames) f = 0;
  
  if (dist(mouseX, mouseY, 410, 400) < 37.5) {
    button(410, 400, #BFB5B5, #766767);
  }
  else {
    button(410, 400, #EAE3E3, #8B7272);
  }
  fill(0);
  textSize(50);
  text("→", 408, 396);
  
  textSize(size);
  if (size < 60){
    size++;
  }
  fill(255);
  text("Colour Game", 250, 250);
  
  score = 0;
}

void show() {
  
}
  
void aClicks() {
  if (dist(mouseX, mouseY, 410, 400) < 37.5) {
    mode = B;
    BGM.pause();
  }
}
