//declare Array Lists
ArrayList<Raindrop> rain = new ArrayList<Raindrop>();
ArrayList<acidRain> acid = new ArrayList<acidRain>();
Bucket b;    //declare a new Bucket called b
int mode = 0;

void setup() {
  size(1200, 800);    //draw canvas
  
  rain.add(new Raindrop(random(width),0));    //add a raindrop to the array
  b = new Bucket();    //initialize the Bucket class
}

void draw() {
  startScreen();
  Level1();
 // Level2();
  //Level3();
  //gameOverScreen();
}