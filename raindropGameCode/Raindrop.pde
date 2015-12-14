class Raindrop {
  //declare variables
  PVector loc, vel, acc;
  int diam;
  color c;

  //make a constructor
  Raindrop(float x, float y ) {
    diam = 25;
    loc = new PVector(x, y);
    vel = new PVector(0, .01);
    acc = new PVector(0, .001);
    c = color(0, 0, random(100));
  }

  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void fall() {
    vel.add(acc);
    loc.add(vel);
  }
  boolean isInContactWith(PVector m) {
    if (m.dist(loc)<diam/2) {
      return true;
    } else {
      return false;
    }
  }
  void reset() {
    loc.y =0-diam/2;
    vel.y = .01;
  }
}