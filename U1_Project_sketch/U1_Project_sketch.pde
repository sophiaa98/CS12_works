//Sophia Song
//Feb 12 2025

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer BGM, EBGM;

int mode;
final int A = 1;
final int B = 2;
final int C = 3;

color red = #D34026;
color green = #60C140;
color blue = #3E94CB;

int score;
int life;
float size = 40;
int HighestScore;

String[] words = {"RED", "GREEN", "BLUE"};
color[] colors = {red, green, blue};

int random = (int) random (1, 2);
int randomWord = (int) random(0, 3);
int randomColor = (int) random(0, 3);

PImage img1;
PImage img2;

PImage[] gif;
int numberOfFrames;
int f;

boolean leftkey, rightkey;
boolean pressMATCH;
boolean pressDONTMATCH;


void setup() {
  size(500, 500);
  mode = A;
  textSize(100);
  textAlign(CENTER, CENTER);

  minim = new Minim(this);
  BGM = minim.loadFile("BGM.mp3");
  EBGM = minim.loadFile("video-game-over.mp3");
  //scoreA = minim.loadFile("");

  numberOfFrames = 40;
  gif = new PImage[numberOfFrames];

  int i = 0;
  while (i < numberOfFrames) {
    gif[i] = loadImage("frame_" + i + "_delay-0.04s.gif");
    i++;
  }

  img1 = loadImage("241aa887698947.Y3JvcCw4MDgsNjMyLDAsMA.png");
  img2 = loadImage("Screenshot 2025-02-20 095801.png");

  leftkey = rightkey = false;

  col = colors[randomColor];
  nOfcol = words[randomWord];
}

void draw() {
  if (mode == A) {
    a();
  } else if (mode == B) {
    b();
  } else if (mode == C) {
    c();
  } else {
    println("Mode error: " + mode);
  }
}

void button(int x, int y, color c, color cs) {
  fill(c);
  stroke(cs);
  circle(x, y, 75);
}
