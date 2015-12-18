class Raindrop {
  //declare variables
  PVector loc, vel, acc;
  int diam;
  color c;

  //make a constructor
  Raindrop(float x, float y ) {
    diam = 25;
    loc = new PVector(x, y);
    vel = new PVector(0, random(.01));
    acc = new PVector(0, random(.001));
    c = color(255);
  }
  //display circle
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  //add velocity and acceleration so that they fall
  void fall() {
    vel.add(acc);
    loc.add(vel);
  }
  //create a boolean that will determine if the raindrops are in contact with the ball
  boolean isInContactWith(PVector m) {
    if (m.dist(loc) < b.diam/2 + diam/2) {
      return true;
    } else {
      return false;
    }
  }
  //send the circle back to the top
  void reset() {
    loc.y =0-diam/2;
    vel.y = .01;
  }
}