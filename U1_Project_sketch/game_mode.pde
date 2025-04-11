String nOfcol;
//String sgreen;
//String sblue;
//color cred;
//color cgreen;
color col;
int nOfcolSize = 60;
int timeLimit = 1;
int timeCounter = nOfcolSize;

void updateWordAndColor() {
  randomWord = (int) random(0, 3);
  randomColor = (int) random(0, 3);
  random = (int) random (1, 3);
  col = colors[randomColor];
  nOfcol = words[randomWord];
}

void b() {
  BGM.play();
  background(255);
  image(img1, -25, 0, 550, 500);
  if (timeCounter >= timeLimit) {
    timeCounter = 0;
    nOfcolSize = 60;
    updateWordAndColor();
    //50-50 split
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
    nOfcolSize -= 0.005;
  } else {
    nOfcolSize = 60;
    timeCounter = nOfcolSize;
    timeLimit = 1;
    //col = (int) random(0, 3);
  }


  if (dist(mouseX, mouseY, 375, 400) < 37.5 || rightkey == true) {
    button(375, 400, #BCD0E0, 255);
    println(leftkey);
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
      TRUE.rewind();
      TRUE.play();
    } else {
      life--;
    }
    pressMATCH = false;
    leftkey = false;
  }

  // Don't match press
  if (pressDONTMATCH) {
    if ((nOfcol.equals("RED") && col == red) || (nOfcol.equals("BLUE") && col == blue) || (nOfcol.equals("GREEN") && col == green)) {
      life--;
    } else {
      score++;
      TRUE.rewind();
      TRUE.play();
    }
    pressDONTMATCH = false;
    rightkey = false;
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
  
  if (leftkey == true) {
    pressMATCH = true;
  } else if (rightkey == true) {
    pressDONTMATCH = true;
  }
}

void bClicks() {
  if (dist(mouseX, mouseY, 125, 400) < 37.5) {
    pressMATCH = true;
  } else if (dist(mouseX, mouseY, 375, 400) < 37.5) {
    pressDONTMATCH = true;
  }
}
