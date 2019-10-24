class Ufo extends GameObject {

  PVector direction;
  int shotTimer;
  int threshold;

  Ufo () {
    lives = 3;
    shotTimer = 0;
    threshold = 30;
    location = new PVector (width/2, height/2);
    velocity = new PVector (0, 0);
    direction = new PVector (0, -0.1);
  }


  void show () {
    pushMatrix ();

    translate(location.x, location.y);
    rotate(direction.heading());
    image (shipimg, 0, 0);

    popMatrix ();
  }

  void act () {

    super.act();
    velocity.setMag( velocity.mag() * 0.95);

    int i = 0;
    while (i < objects.size()) {
      GameObject myObj = objects.get(i);
      if (myObj instanceof Ship) {
        if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < size/2 + myObj.size/2) {
          lives = lives - 1;
        } else if (myObj instanceof Bullet) {
          if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < size/2 + myObj.size/2) {
            myObj.lives = 0;
            myShip.score = score + 1;
            lives = 0;
          }
        }
      }
      i++;
    }

    shotTimer++;

    if (shotTimer >= threshold) {
      objects.add (new Bullet());
      shotTimer = 0;
    }
  }
}
