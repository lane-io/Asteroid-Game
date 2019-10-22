class Ship extends GameObject {

  PVector direction;
  int shotTimer;
  int threshold;

  Ship () {
    score = 0;
    lives = 100;
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
      if (myObj instanceof Asteroid) {
        if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < size/2 + myObj.size/2) {
          myObj.lives = myObj.lives - 1;
          lives = lives - 1;
          location.x = width/2;
          location.y = height/2;
          if (myObj.size > 15) {
            objects.add(new Asteroid (myObj.size/2, location.x, location.y));
            objects.add(new Asteroid (myObj.size/2, location.x, location.y));
          }
        }
      }
      i++;
    }

    shotTimer++;

    if (spacekey && shotTimer >= threshold) {
      objects.add (new Bullet());
      shotTimer = 0;
    }
    
    if (upkey) velocity.add(direction);
    if (downkey) velocity.sub(direction);
    if (leftkey) direction.rotate(-radians(2));
    if (rightkey) direction.rotate(radians(2));
  }
}
