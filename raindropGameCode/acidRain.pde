class acidRain {
  //declare variables
  PVector loc, vel, acc;
  int diam;
  color c;

  //make a constructor
  acidRain(float x, float y, float a ) {
    diam = 25;
    loc = new PVector(x, y);
    vel = new PVector(0, random(.05));
    acc = new PVector(0, random(0,a));
    c = color(0);
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
  //create a boolean that will determine if the raindrops are in contact with the bucket
   boolean isInContactWith(PVector m) {
    if (loc.y + diam/2 >= m.y - 65 && loc.y +diam/2 <= m.y -60 && m.x-60 < loc.x && m.x+60 > loc.x) {
        return true;
      }
     else {
      return false;
    }
  }
  //send the circle back to the top
  void reset() {
    loc.y =0-diam/2;
  }
}