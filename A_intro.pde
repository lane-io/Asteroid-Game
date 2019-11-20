void intro() {

  setup();

  background(0);

  int tsizestart;
  int tsizerules;

  tsizestart = 40;
  tsizerules = 20;

  if (mouseX > (width/2 - 50) && mouseX < (width/2 + 50) && mouseY > (height/2 - 40) && mouseY < (height/2 + 20)) {
    tsizestart = tsizestart + 5;
  }

  if (mouseX > (width/2 - 50) && mouseX < (width/2 + 50) && mouseY > (height/2 + 20) && mouseY < (height/2 + 70)) {
    tsizerules = tsizerules + 5;
  }

  textAlign(CENTER, CENTER);
  textSize(tsizestart);
  text("START", width/2, height/2 - 20);

  textSize(tsizerules);
  text("RULES", width/2, height/2 + 50);
}
