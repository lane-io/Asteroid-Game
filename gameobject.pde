abstract class GameObject {

  int lives;
  int score;
  int size;
  float alpha;
  PVector location;
  PVector velocity;
  PVector gravity;

  GameObject() {
  }

  void show() {
  }

  void act() {

    location.add(velocity);

    //gravity = new PVector (width/2 - location.x, height/2 - location.y);
    //gravity.setMag (0.01);

    //velocity.add (gravity);

    if (location.x < -50) location.x = width + 50;
    if (location.y < -50) location.y = height + 50;
    if (location.x > width + 50) location.x = -50;
    if (location.y > height + 50) location.y = -50;
  }
}
