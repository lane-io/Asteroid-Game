class Particle extends GameObject {

  float size;
  float g;

  Particle() {
    lives = 1;
    alpha = 255;
    location = new PVector (random(0, width), random(0, height));
    velocity = new PVector (myShip.direction.x, myShip.direction.y);
  }

  Particle(float x, float y) {
    lives = 1;
    alpha = 255;
    size = random (1, 7);
    location = new PVector (x, y);
    velocity = new PVector (0, 1);
    velocity.setMag ((10 - size)*0.2);
    velocity.rotate (random (0, TWO_PI));
  }

  void show() { 

    g = 255 - (size*30);

    fill(245, g, 53, alpha);
    noStroke();
    ellipse(location.x, location.y, size, size );
  }

  void act() {
    super.act();

    alpha = alpha - ((10 - size)*0.6);

    if (location.x <= -20 || location.y <= -20 || location.x >= width+20 || location.y >= height+20) lives = 0;
  }
}
