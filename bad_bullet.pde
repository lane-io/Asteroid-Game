class badBullet extends GameObject {

  badBullet() {
    lives = 1;
    alpha = 255;
    location = new PVector (UFO.location.x, UFO.location.y);
    velocity = new PVector (myShip.location.x, myShip.location.y);
    velocity.setMag(-7);
  }

  void show() {
    noStroke();
    fill(232, 59, 59);
    ellipse(location.x, location.y, 5, 5);
  }

  void act() {
    super.act();

    if (location.x <= -20 || location.y <= -20 || location.x >= width+20 || location.y >= height+20) lives = 0;
  }
}
