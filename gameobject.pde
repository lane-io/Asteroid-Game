abstract class GameObject {

  int lives;
  int size;
  PVector location;
  PVector velocity;

  GameObject() {
  }

  void show() {
  }

  void act() {
    location.add(velocity);

    if (location.x < -20) location.x = width+20;
    if (location.y < -20) location.y = height+20;
    if (location.x > width+20) location.x = -20;
    if (location.y > height+20) location.y = -20;
  }
}
