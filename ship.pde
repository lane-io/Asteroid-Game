class Ship extends GameObject {

  //1. instance variables
  // only apply to one class, nonglobal

  PVector direction;

  //2. constructors

  Ship () {
    lives = 3;
    location = new PVector (width/2, height/2);
    velocity = new PVector (0, 0);
    direction = new PVector (0, -0.1);
  }

  //3. behavior functions
  // defines what the class can do

  void show () {
    pushMatrix ();

    translate(location.x, location.y);
    rotate(direction.heading());
    image (shipimg, 0, 0);

    popMatrix ();
  }

  void act () {
    location.add (velocity);

    if (upkey) velocity.add(direction);
    if (downkey) velocity.sub(direction);
    if (leftkey) direction.rotate(-radians(2));
    if (rightkey) direction.rotate(radians(2));

    if (location.x < -20) location.x = width+20;
    if (location.y < -20) location.y = height+20;
    if (location.x > width+20) location.x = -20;
    if (location.y > height+20) location.y = -20;

    if (spacekey) myGameObject.add (new Bullet());
  }
}
