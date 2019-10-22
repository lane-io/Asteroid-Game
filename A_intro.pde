void intro() {
  background(0);

  int tsize;

  tsize = 30;

  if (mouseX > (width/2 - 50) && mouseX < (width/2 + 50) && mouseY > (height/2 - 20) && mouseY < (height/2 + 20)) {
    tsize = tsize + 5;
  }

  textAlign(CENTER, CENTER);
  textSize(tsize);
  text("START", width/2, height/2);
}
