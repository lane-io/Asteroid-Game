class ufo extends GameObject {

  PVector direction;
  int shotTimer;
  int threshold;
  float x, y;

  ufo () {
    alpha = 255;
    shotTimer = 0;
    threshold = 30;
    location = new PVector (random(0, width), random(0, height));
    velocity = new PVector (0, 1);
    velocity.setMag (random (0, 2));
    velocity.rotate (random (0, TWO_PI));
    size = 20;
  }

  ufo (int s, float x, float y) {
    lives = 1;
    alpha = 255;
    shotTimer = 0;
    threshold = 30;
    location = new PVector (x, y);
    velocity = new PVector (0, 1);
    velocity.setMag (random (0, 2));
    velocity.rotate (random (0, TWO_PI));
    size = s;
  }


  void show () {
    pushMatrix ();

    translate(location.x, location.y);
    fill (232, 59, 59);
    ellipse(location.x, location.y, size, size);

    println(location.x, location.y);

    popMatrix ();
  }

  void act () {

    super.act();

    if (location.x < -500) location.x = width + 500;
    if (location.y < -500) location.y = height + 500;
    if (location.x > width + 500) location.x = -500;
    if (location.y > height + 500) location.y = -500;

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
      objects.add (new badBullet());
      shotTimer = 0;
    }
  }
}
