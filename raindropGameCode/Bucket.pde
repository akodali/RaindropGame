class Bucket{
  //declare variables
  PVector loc;
  int diam;
  //int l,w;
  //make a constructor
  Bucket(){
    diam = 100;
    loc = new PVector();
    //l = 200;
    //w = 100;
  }
 //display the Bucket
 void display(){
   fill(0);
   //rectMode(CENTER);
   //rect(loc.x,loc.y,l,w);
   ellipse(loc.x,loc.y,diam,diam);
 }
 //update the location of the Bucket
 void update(){
   loc.set(mouseX,mouseY);
 }
}