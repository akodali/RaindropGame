//int count = 1000;
//PVector mouse;   //declare a P
//Raindrop []r = new Raindrop[count];      //declare a new Raindrop called r
ArrayList<Raindrop> rain = new ArrayList<Raindrop>();
Bucket b;    //declare a new Bucket called b

void setup() {
  //draw canvas
  size(1200, 800);
  rain.add(new Raindrop(random(width),0));
  //mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  //for (int i=0; i<count; i++) {
    //r [i] = new Raindrop(random(width), 0);    //Initialize r. The parameters used are the initial x and y positions
  //}
  b = new Bucket();
}

void draw() {
  //mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  rain.add(new Raindrop(random(width),0));
  b.display();
  b.update();
  for (int i= rain.size()-1; i >= 0; i--) {
    Raindrop r = rain.get(i); 
    r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r.display();      //display the raindrop
    if (r.isInContactWith(b.loc)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      r.reset();                         //if it is, reset the raindrop
    }
    if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      r.reset();                           //if it does, reset the raindrop
    }
  }
}