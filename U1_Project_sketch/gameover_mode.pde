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
  //"HIGHEST SCORE"
  //"SCORE"

}

void cClicks() {
  //if(dist(mouseX, mouseY, 50, 400) < 37.5) {
  //  mode = B;
  //}
  //else if(dist(mouseX, mouseY, 750, 400) < 37.5) {
  //  mode = A;
  //}
}
