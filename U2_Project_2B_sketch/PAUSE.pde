void pause() {
  fill(255);
  text("PAUSE", 400, 400);
  
  //PAUSE BUTTON 
  if(mouseX >710 && mouseX < 750 && mouseY > 50 && mouseY < 100) {
    stroke(0);
    fill(255);
    circle(725, 75, 50);
    triangle(715, 60, 715, 90, 740, 75);
  }
  else {
    stroke(255);
    fill(0);
    circle(725, 75, 50);
    triangle(715, 60, 715, 90, 740, 75);
  }
  
  
}

void pauseClicks() {
  if(dist(mouseX, mouseY, 725, 75) < 50) {
    mode = GAME;
  }
}
