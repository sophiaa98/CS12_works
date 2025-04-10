void game() {
  background(255);
  player1.show();
  player1.act();
  
  int i = 0;
  while (i < bullets.size()) {
    Bullet currentBullet = bullets.get(i);
    currentBullet.act();
    currentBullet.show();
    i++;
  }
  /*fill(0);
  circle(loc.x, loc.y, d);
  
  loc.add(vel);
  vel.add(gravity);
  
  if (loc.y < d/2 || loc.y > height-d/2) vel.y = -0.9 * vel.y;
  if (loc.x < d/2 || loc.x > width-d/2) vel.x = -0.9 * vel.x;*/
}

void gameClicks() {
  /*vel.setMag(vel.mag() * 1.1);*/
  
}
