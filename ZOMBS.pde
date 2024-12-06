zombs NIKO = new zombs(true, 1,50);
zombs A = new zombs(true, 1,50);


void setup() {
  frameRate(60);
  size(1980,1080);
}

void draw() {
  NIKO.move();
  NIKO.display();
  
  A.move(); 
  A.display();
}

class zombs  {
  Boolean alive;
  int speed;
  int size;
  int xPos;
  int yPos;
  
  //constructor
  zombs (Boolean life, int sp, int si) { 
    alive = life; 
    speed = int(random(70));;
    size = si;
    xPos =  int(random(1080));
    yPos = 0;
  }
  
  void move() { 
    if (frameCount % 10 == 0) {
      yPos++; }
  }
  void display() {
    square(xPos - size/2, yPos, size);
    if (frameCount % 5 == 0) {
      background(245,245,245);
    }
  }
    
  
}
