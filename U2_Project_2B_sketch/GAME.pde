void game() {
  background(0);
  fill(255);
  textSize(25);
  text("SCORE:", 45, 20);
  
  // UFO spawn logic
  ufoTimer--;
  if (ufoTimer <= 0) {
    objects.add(new UFO());
    ufoTimer = int(random(600, 1200));
  }


  int i = 0;
  while (i < objects.size()) {
    GameObject currentObjects = objects.get(i);
    currentObjects.act();
    currentObjects.show();
    if (currentObjects.lives == 0) {
      objects.remove(i);
    }
    else {
      i++;
    }
  }
  
  fill(#40D7FF);
  text("Lives: " + player1.life, 700, 20);
  
  //PAUSE BUTTON 
  if(mouseX >710 && mouseX < 750 && mouseY > 50 && mouseY < 100) {
    stroke(0);
    fill(255);
    circle(725, 75, 50);
  }
  else {
    stroke(255);
    fill(0, 0);
    circle(725, 75, 50);
  }
  line(715, 60, 715, 90);
  line(735, 60, 735, 90);
  
  if (player1.life == 0){
    mode = GAMEOVER;
  }
}

void gameClicks() {
  if(dist(mouseX, mouseY, 725, 75) < 25) {
    mode = PAUSE;
  }
  
  
}
