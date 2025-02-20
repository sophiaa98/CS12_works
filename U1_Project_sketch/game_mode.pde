void b() {
  life = 1;
  score = 0;
  background(255);
  image(img1, -25, 0, 550, 500);

  //fill(0);
  //rect(250, 0, 250, 500);
  
  //game mode
  textSize(50);

  fill(colors[randomColor]);
  text(words[randomWord], width/2, height/2);
  
  if (dist(mouseX, mouseY, 375, 400) < 37.5) {
    button(375, 400, #BCD0E0, 255);
  }
  else {
    button(375, 400, #F2F9FF, 255);
  }
  
  if (dist(mouseX, mouseY, 125, 400) < 37.5) {
    button(125, 400, #BCD0E0, 255);
  }
  else {
    button(125, 400, #F2F9FF, 255);
  }
  
  fill(0);  
  textSize(20);
  text("DON'T", 375, 390);
  text("MATCH", 375, 410);
  fill(0);
  text("MATCH", 125, 396);
  
  if (life == 0) {
    mode = C;
  }
}

  void bClicks() {
  //if(dist(mouseX, mouseY, 50, 400) < 37.5) {
  //  mode = A;
  //}
  //else if(dist(mouseX, mouseY, 750, 400) < 37.5) {
  //  mode = C;
  //}
}
