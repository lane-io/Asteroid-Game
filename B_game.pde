void game() {
  background(0);

  int i = 0;
  while (i < myGameObject.size()) {
    GameObject bullet = myGameObject.get(i);
    bullet.show();
    bullet.act();
    i++;

    myShip.show();
    myShip.act();
  }
}
