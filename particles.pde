class Particle extends GameObject {

  Particle() {
    lives = 1;
    alpha = 255;
    location = new PVector (random(0, width), random(0, height));
    velocity = new PVector (myShip.direction.x, myShip.direction.y);
  }

  void show() {
    
    fill(255, alpha);
    noStroke();
    ellipse(3, 3, location.x, location.y);
  }

  void act() {
    super.act();

    location.x = location.x + 10;
    location.y = location.y + 10;

    alpha = alpha - 10;
  }
}
