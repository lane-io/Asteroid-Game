void game() {
  background(0);

  textAlign(CENTER);
  textSize(20);
  text("LIVES : " + myShip.lives, width/2, (height/2) - 50);
  text("SCORE : " + myShip.score, width/2, (height/2) + 50);

println(myShip.lives);

  myShip.show();
  myShip.act();

  int i = 0;
  while (i < objects.size()) {
    GameObject myObj = objects.get(i);
    myObj.show();
    myObj.act();
    if (myObj.lives == 0 || myObj.alpha <= 0) {
      objects.remove(i);
      objects.add(new Particle());
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
