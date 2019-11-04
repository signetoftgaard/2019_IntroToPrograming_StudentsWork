object myFlower;
object myFlower2;
object myRect;
object myRect2;
color bColor = #43AF76;

void setup() {
  size(1500, 1000);
  myFlower = new object(40, 7, 100, 100, #00FFFF, 5); 
  myFlower2 = new object(100, 7, 100, 500, #FF00FF, 10);
  myRect = new object(200, 800, 100, 5);
  myRect2 = new object(200, 200, 100, 0);
}

void draw() {
  background(bColor);
  myFlower.displayFlower();
  myFlower.move();
  myFlower.bounce();
  myFlower2.displayFlower();
  myFlower2.bounce();
  myFlower2.move();
  myRect.displayRect();
  myRect.move();
  myRect.bounce();
  myRect2.displayRect();
  myRect2.mouseMoveX();
  myRect2.mouseMoveY();
  myRect2.collision(myFlower, int(random(0,255))); //detects collision between rect2 and myflower
  myRect2.collision(myFlower2, int(random(0,255))); //changes the background to a random greyscale when there is collison
}
