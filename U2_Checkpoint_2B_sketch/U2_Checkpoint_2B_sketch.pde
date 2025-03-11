//Sophia Song
//Mar 7 2025

Button[] myButton;
//color pallette
color blue = #28E7ED;
color green = #CEF255;
color pink = #F76DDC;
color yellow = #FFF387;
color black = #000000;
color white = #FFFFFF;
color purple = #BC21E8;
color orange = #F58128;

color bg;
boolean mouseReleased;
boolean wasPressed;

void setup() {
  size(800, 800);
  myButton = new Button[4];
  myButton[0] = new Button("blue", 400, 380, 200, 200, blue, yellow);
  myButton[1] = new Button("purple", 200, 200, 100, 100, pink, green);
  myButton[2] = new Button("orange", 600, 200, 100, 100, orange, #28F59D);
  myButton[3] = new Button("white", 400, 600, 600, 180, white, black);

}

void draw() {
  click();
  background(bg);
  
  int i = 0;
  while (i < 4) {
    myButton[i].show();
    if (myButton[i].clicked) {
      bg = myButton[i].normal;
    }
    i++;
  }
  
}
