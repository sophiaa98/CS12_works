void gameOver() {
  background(0);
  image(img2, 25, 176, 750, 400);
  textSize(35);
  fill (255);
  text("SCORE: " + "/28", 400, 500);
}
void gameOverClicks() {
  if ( dist(mouseX, mouseY, 400, 400) < 400) {
    mode = INTRO;
  }
}
