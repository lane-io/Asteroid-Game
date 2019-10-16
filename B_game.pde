void game() {
  background(0);

  myShip.show();
  myShip.act();


  int i = 0;
  while (i < objects.size()) {
    GameObject myObj = objects.get(i);
    myObj.show();
    myObj.act();
    if (myObj.lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
}
