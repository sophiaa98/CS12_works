String nOfcol;
//String sgreen;
//String sblue;
//color cred;
//color cgreen;
color col;

void b() {
  score = 0;
  background(255);
  image(img1, -25, 0, 550, 500);

  //fill(0);
  //rect(250, 0, 250, 500);
  
  //game mode
  

  
  while (life != 0) {
    textSize(50);
    //50-50 split
    if (random == 1){
      col = colors[randomColor];
      nOfcol = words[randomWord];
    }
    if (random == 2){
      col = colors[randomColor];
      if (nOfcol.equals("red")) {
        col = red;
      }
      else if (nOfcol.equals("blue")) {
        col = blue;
      }
      else if (nOfcol.equals("green")) {
        col = green;
      }
    }
  
    while (nOfcolSize >= 0){
      textSize(nOfcolSize);
      fill(col);
      text(nOfcol, width/2, height/2);
      nOfcolSize --;
    }
    
  }



  
  if (dist(mouseX, mouseY, 375, 400) < 37.5 || rightkey == true) {
    button(375, 400, #BCD0E0, 255);
  }
  else {
    button(375, 400, #F2F9FF, 255);
  }
  
  if (dist(mouseX, mouseY, 125, 400) < 37.5 || leftkey == true) {
    button(125, 400, #BCD0E0, 255);
  }
  else {
    button(125, 400, #F2F9FF, 255);
  }
  
  //match press
  if (pressMATCH == true) {
    if (nOfcol.equals("red") && col == red){
      score ++;
      pressMATCH = false;
    }
    else if (nOfcol.equals("blue") && col == blue){
      score ++;
      pressMATCH = false;
    }
    else if (nOfcol.equals("green") && col == green){
      score ++;
      pressMATCH = false;
    }
    else {
      life = 0;
    }
  }
  //don't match press
  if (pressDONTMATCH == true) {
    if (nOfcol.equals("red") && col == red){
      life = 0;
    }
    if (nOfcol.equals("blue") && col == blue){
      life = 0;
    }
    if (nOfcol.equals("green") && col == green){
      life = 0;
    }
    else {
      score ++;
      pressDONTMATCH = false;
    }
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
  if(dist(mouseX, mouseY, 125, 400) < 37.5 || leftkey == true) {
    pressMATCH = true;
  }
  else if(dist(mouseX, mouseY, 375, 400) < 37.5 || rightkey == true) {
    pressDONTMATCH = true;
  }
}
