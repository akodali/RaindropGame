int count = 1000;
//PVector mouse;   //declare a P
Raindrop []r = new Raindrop[count];      //declare a new Raindrop called r
Bucket b;    //declare a new Bucket called b

void setup() {
  //draw canvas
  size(1200, 800);
  //mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  for (int i=0; i<count; i++) {
    r [i] = new Raindrop(random(width), 0);    //Initialize r. The parameters used are the initial x and y positions
  }
  b = new Bucket();
}

void draw() {
  //mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(255);
  b.display();
  b.update();
  for (int i=0; i<count; i++) {
    r[i].fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r[i].display();      //display the raindrop
    if (r[i].isInContactWith(b.loc)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      r[i].reset();                         //if it is, reset the raindrop
    }
    if (r[i].loc.y > height + r[i].diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      r[i].reset();                           //if it does, reset the raindrop
    }
  }
}