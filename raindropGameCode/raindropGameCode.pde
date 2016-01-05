//declare Array Lists
ArrayList<Raindrop> rain = new ArrayList<Raindrop>();
ArrayList<acidRain> acid = new ArrayList<acidRain>();
Bucket b;    //declare a new Bucket called b
int mode = 0;
int score = 0;

void setup() {
  size(1000, 800);    //draw canvas
  rain.add(new Raindrop(random(width), 100));    //add a raindrop to the array
  b = new Bucket();    //initialize the Bucket class
}

void draw() {
  startScreen();
  Score();
  Level1();
  // Level2();
  //Level3();
  //gameOverScreen();
}