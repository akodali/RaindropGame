void startScreen() {
  if (mode == 0) {
    background(255);
    fill(0);  // Set fill to black
    //draw text on start screen
    textAlign(CENTER);
    textSize(100);
    text("DROUGHT", width/2, height/2-200);
    textSize(25);
    String description = "You are in a drought, catch water so you can survive.\nMake sure you don't catch any black acid rain";
    textLeading(25);
    text(description, width/2, height/2 - 100);
    textSize(50);
    String levels = "Select a Level\nLeft arrow = Easy\nUp arrow = Medium\nRight arrow = Hard";
    textLeading(50);  // Set leading to 10
    text(levels, width/2, height/2);
    if (keyPressed) {
      if (keyCode == LEFT) {
        mode ++;
      }
      if (keyCode == UP) {
        mode = 2;
      }
      if (keyCode == RIGHT) {
        mode = 3;
      }
    }
  }
}