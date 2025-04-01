//Sophia Song
//Mar 11 2025

Gif gif1, gif2, bg;

void setup() {
  size(240, 152);
  bg = new Gif("data2/frame_", "_delay-0.1s.gif", 8, 5, 0, 0, width, height);
  //Gif(String before, String after, int numFrames, int speed, int x, int y);
  //Gif(String before, String after, int numFrames, int speed, int x, int y, int w, int h)
  gif1 = new Gif("data3/frame_", "_delay-0.16s.gif", 22, 5, 150, 0, 100, 100);
  gif2 = new Gif("data3/frame_", "_delay-0.16s.gif", 22, 10, 150, 50, 100, 100);
}

void draw() {
  bg.show();
  gif1.show();
  gif2.show();
}
  
