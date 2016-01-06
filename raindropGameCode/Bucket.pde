class Bucket{
  PImage Bucket;    //declare variable
  PVector loc;
  
  Bucket(){    //make a constructor
    Bucket = loadImage("bucket.jpg");
    loc = new PVector();
  }
 //display the Bucket
 void display(){
   imageMode(CENTER);
   image(Bucket,loc.x,loc.y);
 }
 //update the location of the Bucket
 void update(){
   loc.set(mouseX,height-65);
 }
}