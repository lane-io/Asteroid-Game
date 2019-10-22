//criteria
//1. asteroid + ship collisions
//2. points + lives
//3. sfx
//4. particle explosions
//6. ufo randomly appears
//  a. ufo bullet
//  b. ufo collisions
//  c. behavior
//    i. spawns randomly on edge
//    ii. goes through to other side

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
