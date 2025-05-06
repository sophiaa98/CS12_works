//Sophia Song
//Apil 4 2025
import java.util.ArrayList;

//keyboard 
boolean upkey, downkey, leftkey, rightkey, spacekey;

//Game Objects
Spaceship player1;

//List of Bullets
ArrayList<GameObject> objects;


//Mode
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

PVector loc;
PVector vel;
PVector gravity;

float d;
PImage img1, img2;


int ufoTimer = 0;
int ufoInterval = 1000; // Or use random(800, 1500) if you want variety

void setup () {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  img1 = loadImage("unnamed.jpg");
  img2 = loadImage("image.png");
  objects = new ArrayList();
  player1 = new Spaceship();
  objects.add(player1);
  objects.add(new Asteroid());
  objects.add(new Asteroid());
  objects.add(new Asteroid());
  objects.add(new Asteroid());
}
void draw() {
  if (mode == INTRO) { 
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameOver();
  }
}

void button(int x, int y, color c, color cs, color cb, String w) {
  if(mouseX > x-100 && mouseX < x+100 && mouseY > y-50 && mouseY < y+50) {
    fill(cb);
    stroke(c);
    rect(x, y, 200, 100);
    fill(c);
    textSize(60);
    text(w, x, y-5);
  }
  else {
    fill(c);
    stroke(cs);
    rect(x, y, 200, 100);
    fill(cs);
    textSize(70);
    text(w, x, y-5);
  }
}
