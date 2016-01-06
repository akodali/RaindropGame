void gameOver() {
  //draw the game over screen if mode equals 2
  if (mode == 2) {
    background(255, 0, 0);
    textSize(150);
    fill(255);
    text("Game Over", width/2, height/2 -100);
  }
}