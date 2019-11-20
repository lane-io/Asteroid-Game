//criteria
//3. sfx
//6. ufo randomly appears
//  a. ufo bullet
//  b. ufo collisions
//  c. behavior
//    i. spawns randomly on edge
//    ii. goes through to other side

int mode;

final int intro = 0;
final int rules = 1;
final int game = 2;
final int gameover = 3;

int highscore = 0;

boolean upkey, downkey, leftkey, rightkey, spacekey;
PImage shipimg;
Ship myShip;
ufo UFO;
ArrayList<GameObject> objects;

void setup () {
  size (500, 500);
  mode = 0;

  shipimg = loadImage ("shark.gif");

  objects = new ArrayList<GameObject>();

  myShip = new Ship ();
  imageMode (CENTER);
  
  UFO = new ufo ();

  objects.add (new Asteroid());
  objects.add (new Asteroid());
  objects.add (new Asteroid());

  
  
  objects.add (new ufo());
}

void draw () { 
  if (mode == 0) {
    intro();
  } else if (mode == 1) {
    rules();
  } else if (mode == 2) {
    game();
  } else if (mode == 3) {
    gameover();
  }
}
