class ufo extends GameObject {

  PVector direction;
  int shotTimer;
  int threshold;
  float x, y;

  ufo () {
    alpha = 2;
    shotTimer = 0;
    threshold = 30;
    location = new PVector (random(0, width), random(0, height));
    velocity = new PVector (0, 1);
    velocity.rotate (random (0, TWO_PI));
    size = 20;
  }


  void show () {
    pushMatrix ();

    translate(location.x, location.y);
    fill (255);
    ellipse(location.x, location.y, size, size);

    println (location.x, location.y);

    popMatrix ();
  }

  void act () {

    super.act();

    int i = 0;
    while (i < objects.size()) {
      GameObject myObj = objects.get(i);
      if (myObj instanceof Ship) {
        if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < size/2 + myObj.size/2) {
          lives = lives - 1;
        }
      } else if (myObj instanceof goodBullet) {
        if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < size/2 + myObj.size/2) {
          myObj.lives = 0;
          myShip.score++;
          lives = lives - 1;
        }
      }
      i++;
    }

    shotTimer++;

    if (shotTimer >= threshold) {
      objects.add (new badBullet(location.x, location.y));
      shotTimer = 0;
    }
  }
}
