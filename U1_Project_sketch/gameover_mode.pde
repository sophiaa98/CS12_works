void c() {
  EBGM.play();
  background(#C43B3B);
  if (HighestScore < score) {
    HighestScore = score;
  }
  image(img2, 0, 0, 500, 500);
  fill(red);
  text("GAME OVER", width/2, 50);
  text("SCORE: " + score, width/2, 230);
  text("HIGHEST SCORE: " + HighestScore, width/2, 300);
  if(dist(mouseX, mouseY, 450, 400) < 37.5) {
    button(450, 400, #B7B1B1, #767575);
  }
  else {
    button(450, 400, 255, #B7B1B1);
  }
  fill(0);
  textSize(50);
  text("→", 450, 395);
  //"HIGHEST SCORE"
  //"SCORE"
  EBGM.pause();
}

void cClicks() {
  if(dist(mouseX, mouseY, 450, 400) < 37.5) {
    mode = A;
  }
}
