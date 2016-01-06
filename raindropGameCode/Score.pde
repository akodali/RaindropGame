void Score() {
  if (mode != 0 && mode!=2) {    //if the game is playing, show the score
    noStroke();
    fill(100);
    rect(0, 0, width, 125);
    fill(255);
    textSize(100);
    text(score, width/2,100);
  }
}