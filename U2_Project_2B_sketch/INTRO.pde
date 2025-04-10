void intro() {
  background(0);
  image(img1, 45, 175, 750, 300);
  button(400, 550, 255, 0, #62FAF6, "start");
}
void introClicks() {
   if (mouseX > 400-100 && mouseX < 400+100 && mouseY > 550-50 && mouseY < 550+50) {
     mode = GAME;
   }
}
