void game() {
  background(0  );
  
  fill(255);
  textSize(25);
  text("SCORE:", 45, 20);
  
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
}

void gameClicks() {
  
}
