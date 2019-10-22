void keyPressed () {
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (key == ' ') spacekey = true;
}

void keyReleased () {
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (key == ' ') spacekey = false;
}

void mouseReleased() {
  if (mode == intro && mouseX > (width/2 - 40) && mouseX < (width/2 + 40) && mouseY > (height/2 - 15) && mouseY < (height/2 + 15)) {
    mode = game;
  } else if (mode == gameover) {
    mode = intro;
  }
}
