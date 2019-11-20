void gameover() {
  background(0);

  if (myShip.score > highscore) {
    highscore = myShip.score;
  }

  fill(255);

  textAlign(CENTER);
  textSize(40);
  text("GAME OVER", width/2, height/2 - 20);

  textSize(20);
  text("HIGHSCORE : " + highscore, width/2, height/2 + 50);
}
