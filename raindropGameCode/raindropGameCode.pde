//declare Array Lists
ArrayList<Raindrop> rain = new ArrayList<Raindrop>();
ArrayList<acidRain> acid = new ArrayList<acidRain>();
Bucket b;    //declare a new Bucket called b
int mode = 0;
int score = 0;
int rlimit = 25;
int alimit = 10;

void setup() {
  size(1000, 800);    //draw canvas
  b = new Bucket();    //initialize the Bucket class
}

void draw() {
  startScreen();
  game();
  Score();
  gameOver();
}