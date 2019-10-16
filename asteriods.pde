//criteria
//1. mode frameowrk
//2. points
//3. sfx
//4. particle explosions
//5. ships dies at asteroid collision
//6. ufo randomly appears

int mode;

final int intro = 0;
final int game = 1;
final int gameover = 2;

boolean upkey, downkey, leftkey, rightkey, spacekey;
PImage shipimg;
Ship myShip;
ArrayList<GameObject> objects;

void setup () {
  size (500, 500);
  mode = 0;

  shipimg = loadImage ("shark.gif");

  myShip = new Ship ();
  imageMode (CENTER);
  objects = new ArrayList<GameObject>();

  objects.add (new Asteroid());
  objects.add (new Asteroid());
  objects.add (new Asteroid());
}

void draw () {
  if (mode == 0) {
    intro();
  } else if (mode == 1) {
    game();
  } else if (mode == 2) {
    gameover();
  }
}
