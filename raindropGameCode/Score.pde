void Score() {
  //    line(0,100,width,100);
  if (mode != 0 && mode!=2) {
    noStroke();
    fill(100);
    rect(0, 0, width, 125);
    fill(255);
    textSize(100);
    text(score, width/2,100);
  }
}