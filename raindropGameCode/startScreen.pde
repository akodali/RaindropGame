void startScreen() {
  if (mode == 0) {
    background(255);
    fill(0);  // Set fill to black
    //draw text on start screen
    textAlign(CENTER);
    textSize(150);
    text("DROUGHT", width/2, height/2-200);
    textSize(25);
    String description = "You are in a drought, catch water so you can survive.\nMake sure you don't catch any black acid rain";
    textLeading(25);
    text(description, width/2, height/2 - 100);
    textSize(100);
    text("Click to begin", width/2, 2*height/3);
    if (mousePressed) {
      mode ++;
    }
  }
}