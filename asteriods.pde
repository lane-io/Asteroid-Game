int mode;

final int intro = 0;
final int game = 1;
final int gameover = 2;

boolean upkey, downkey, leftkey, rightkey, spacekey;
PImage shipimg;
Ship myShip;
ArrayList<GameObject> myGameObject;

void setup () {
  size (500, 500);
  mode = 0;
  //background(255);

  shipimg = loadImage ("shark.gif");
  imageMode (CENTER);

  myShip = new Ship ();
  myGameObject = new ArrayList<GameObject>();
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
