//Sophia Song
//Apl 4 2025
import jave.util.ArrayList;

//keyboard
boolean upkey, downkey, leftkey, rightkey;

//Game Objects
Spaceship player1;

//List of Bullets
ArrayList<Bullet> bullets;


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
PImage img1;

void setup () {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  img1 = loadImage("unnamed.jpg");
  bullets = new ArrayList();
  
  player1 = new Spaceship();
  
  /*loc = new PVector(width/2, height/2);
  //x = width/2;
  //y = height/2;
  d = 100;*/
  
  /*vel = new PVector(4, 0);
  vel.rotate(random(0, 2*PI));*/
  //vx = random(-5, 5);
  //vy = random(-5, 5);
  
  gravity = new PVector(0, 1);
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
    stroke(cs);
    rect(x, y, 200, 100);
    fill(c);
    textSize(60);
    text(w, x, y-5);
  }
  else {
    fill(c);
    stroke(c);
    rect(x, y, 200, 100);
    fill(cs);
    textSize(70);
    text(w, x, y-5);
  }
}
