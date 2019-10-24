void game() {
  background(0);

  textAlign(CENTER);
  textSize(20);
  stroke(255);
  text("LIVES : " + myShip.lives, width/2, (height/2) - 50);
  text("SCORE : " + myShip.score, width/2, (height/2) + 50);

  myShip.show();
  myShip.act();

  int i = 0;
  while (i < objects.size()) {
    GameObject myObj = objects.get(i);
    myObj.show();
    myObj.act();
    if (myObj.lives == 0 || myObj.alpha <= 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }



  if (myShip.lives <= 0) {
    gameover();
  }

  if (myShip.score >= 24) {
    gameover();
  }
}
