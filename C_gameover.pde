

void gameover() {
  background(0);

  if (myShip.score > highscore) {
    highscore = myShip.score;
  }

  textAlign(CENTER);
  textSize(20);
  text("GAME OVER", width/2, height/2);
}
