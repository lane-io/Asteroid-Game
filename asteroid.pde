class Asteroid extends GameObject {

  Asteroid() {
    lives = 3;
    size = 70;
    alpha = 255;
    location = new PVector (random(0, width), random(0, height));
    velocity = new PVector (0, 1);
    velocity.setMag (random (0, 2));
    velocity.rotate (random (TWO_PI));
  }

  Asteroid (int s, float x, float y) {
    lives = 1;
    size = s;
    alpha = 255;
    location = new PVector (x, y);
    velocity = new PVector (0, 1);
    velocity.setMag (random (0, 2));
    velocity.rotate (random (0, TWO_PI));
  }

  void show() {
    noStroke();
    fill(255);
    ellipse(location.x, location.y, size, size);
  }

  void act() {
    super.act();

    int i = 0;
    while (i < objects.size()) {
      GameObject myObj = objects.get(i);
      if (myObj instanceof Bullet) {
        if (dist(myObj.location.x, myObj.location.y, location.x, location.y) < size/2 + myObj.size/2) {
          myObj.lives = 0;
          myShip.score = score + 1;
          lives = 0;
          if (size > 15) {
            objects.add(new Asteroid (size/2, location.x, location.y));
            objects.add(new Asteroid (size/2, location.x, location.y));
          }
        }
      }
      i++;
    }
  }
}
