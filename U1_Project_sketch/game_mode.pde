String nOfcol;
//String sgreen;
//String sblue;
//color cred;
//color cgreen;
color col;
int nOfcolSize = 50;
int timeLimit = 100;
int timeCounter = nOfcolSize;


void b() {
  BGM.play();
  score = 0;
  background(255);
  image(img1, -25, 0, 550, 500);

  //fill(0);
  //rect(250, 0, 250, 500);

  //game mode



  if (timeCounter >= timeLimit) {
    timeCounter = 0;
    nOfcolSize = 50;

    //50-50 split
    //if (random == 1){
    //  col = colors[randomColor];
    //  nOfcol = words[randomWord];
    //}

    if (random == 2) {
      if (nOfcol.equals("RED")) col = red;
      else if (nOfcol.equals("BLUE")) col = blue;
      else if (nOfcol.equals("GREEN")) col = green;
    }
  }


  if (nOfcolSize >= 1) {
    textSize(nOfcolSize);
    fill(col);
    text(nOfcol, width/2, height/2);
    nOfcolSize -= 0.2;
  } 
  else {
    nOfcolSize = 50;
    timeCounter = nOfcolSize;
    timeLimit = 100;
    col = colors[randomColor];
    nOfcol = words[randomWord];
  }

  //if (life == 0){
  //  break;
  //}
  //nOfcolSize ++;





  if (dist(mouseX, mouseY, 375, 400) < 37.5 || rightkey == true) {
    button(375, 400, #BCD0E0, 255);
  } else {
    button(375, 400, #F2F9FF, 255);
  }

  if (dist(mouseX, mouseY, 125, 400) < 37.5 || leftkey == true) {
    button(125, 400, #BCD0E0, 255);
  } else {
    button(125, 400, #F2F9FF, 255);
  }


  // Match press
  if (pressMATCH) {
    if ((nOfcol.equals("RED") && col == red) || (nOfcol.equals("BLUE") && col == blue) || (nOfcol.equals("GREEN") && col == green)) {
      score++;
    } else {
      life--;
    }
    pressMATCH = false;
  }

  // Don't match press
  if (pressDONTMATCH) {
    if ((nOfcol.equals("RED") && col == red) || (nOfcol.equals("BLUE") && col == blue) || (nOfcol.equals("GREEN") && col == green)) {
      life--;
    } else {
      score++;
    }
    pressDONTMATCH = false;
  }

  fill(0);
  textSize(20);
  text("DON'T", 375, 390);
  text("MATCH", 375, 410);
  fill(0);
  text("MATCH", 125, 396);

  if (life == 0) {

    mode = C;
    BGM.pause();
  }

  textSize(50);
  text("SCORE: " + score, width/2, 100);
}

void bClicks() {
  if (dist(mouseX, mouseY, 125, 400) < 37.5 || leftkey == true) {
    pressMATCH = true;
  } else if (dist(mouseX, mouseY, 375, 400) < 37.5 || rightkey == true) {
    pressDONTMATCH = true;
  }
}
