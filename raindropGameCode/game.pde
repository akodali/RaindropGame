void game() {
  if (mode == 1) {   
    background(255);
    if (rain.size() < rlimit) {    //if there are less than 100 raindrops drawn...
      rain.add(new Raindrop(random(width), 100, .005));    //...add raindrops to the array list
    }
    b.display();   //display bucket 
    b.update();    //update the location of the bucket
    for (int i= rain.size()-1; i >= 0; i--) {
      Raindrop r = rain.get(i); 
      r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
      r.display();      //display the raindrop
      if (r.isInContactWith(b.loc)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
        r.reset();        //if it is, reset the raindrop
        score ++;    //increase the score
      }
      if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
        r.reset();                           //if it does, reset the raindrop
      }
    }
    if (frameCount >= 50) {      //start the acide rain after some time
      if (acid.size() <= alimit) {    //limit the amount of acid rain
        acid.add(new acidRain(random(width), 0, .005));    //add acid rain
      }
      for (int i= acid.size()-1; i >= 0; i--) {
        acidRain a = acid.get(i); 
        a.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
        a.display();      //display the raindrop
        if (a.isInContactWith(b.loc)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
          a.reset();                         //if it is, reset the raindrop
          mode =2;    //game over if acid rain is in contact with the bucket
        }
        if (a.loc.y > height + a.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
          a.reset();                           //if it does, reset the raindrop
        }
      }
    }
  }
}