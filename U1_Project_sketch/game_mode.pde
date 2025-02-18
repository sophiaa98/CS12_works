void b() {
  background(255);
  fill(0);
  rect(250, 0, 250, 500);
  
  //game mode
  fill(colors[randomColor]);
  text(words[randomWord], width/2, height/2);
  
  if(dist(mouseX, mouseY, 375, 400) < 37.5) {
    button(375, 400, #73A7AA, #276E74);
  }
  else{
    button(375, 400, #95D3D8, #40888E);
  }
  
  if(dist(mouseX, mouseY, 125, 400) < 37.5) {
    button(125, 400, #73A7AA, #276E74);
  }
  else{
    button(125, 400, #95D3D8, #40888E);
  }
  
  fill(0);
  textSize(40);
  text("Yes", 375, 396);
  text("No", 125, 396);
  
}

  void bClicks() {
  //if(dist(mouseX, mouseY, 50, 400) < 37.5) {
  //  mode = A;
  //}
  //else if(dist(mouseX, mouseY, 750, 400) < 37.5) {
  //  mode = C;
  //}
}
