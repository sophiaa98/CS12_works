void a() {
  background(255);
  if(dist(mouseX, mouseY, 410, 400) < 37.5) {
    button(410, 400, #73A7AA, #276E74);
  }
  else{
    button(410, 400, #95D3D8, #40888E);
  }
  fill(0);
  textSize(50);
  text("→", 408, 396);
  
  textSize(size);
  if(size < 60){
    size++;
  }
  text("Colour Game", 250, 250);
  
  score = 0;
}

  
void aClicks() {
  if(dist(mouseX, mouseY, 410, 400) < 37.5) {
    mode = B;
  }
}
