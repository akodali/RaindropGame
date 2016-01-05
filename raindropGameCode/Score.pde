void Score() {
  //    line(0,100,width,100);
  if (mode != 0 && mode!=4) {
    fill(255);
    rect(0, 0, width, 125);
    fill(0);
    textSize(50);
    text(score, width/2, 50);
  }
}