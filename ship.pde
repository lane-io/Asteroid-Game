class Ship extends GameObject {

  PVector direction;
  int shotTimer;
  int threshold;

  Ship () {
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
