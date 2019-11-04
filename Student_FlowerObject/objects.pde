class object {

  // Variables
  float speedX; //speed variabel, kan ændres
  float ballX;  //x og y for blomsten
  float ballY;


  float r;       // radius of the flower petal
  int n_petals;  // number of petals 
  float x;       // x-position of the center of the flower & rectangle
  float y;       // y-position of the center of the flower
  int petalColor;//hexadecimal number for the color of petals

  float y1;      //rectangles y-pos
  float Rr;    //firkantens radius

  object(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor, float temp_speedX) {
    r=temp_r;
    n_petals = temp_n_petals;
    x=temp_x;
    y=temp_y;
    petalColor=temp_petalColor;
    speedX = temp_speedX;
  }
  object(float temp_x, float temp_y1, float temp_Rr, float temp_speedX) {
    x = temp_x;
    y1 = temp_y1;
    Rr = temp_Rr;
    speedX = temp_speedX;
  }

  void displayFlower () { //displays flower
    fill(petalColor);
    for (float i=0; i<PI*2; i+=2*PI/n_petals) {
      ballX=x + r*cos(i);
      ballY=y + r*sin(i);
      ellipse(ballX, ballY, r, r);
    }
    fill(200, 0, 0);
    ellipse(x, y, r*1.2, r*1.2);
  }

  void displayRect() { //displays yellow rectangle
    fill(#FFFF00);
    rectMode(CENTER);
    rect(x, y, Rr, Rr);
  }


  void move() { //moves objects
    x = x + speedX;
  }

  float mouseMoveX () { //moves object when mouse is pressed (taken from Atles code on github)
    if (mousePressed) {
      x=mouseX;
    }
    return y ;
  }
  float mouseMoveY () {
    if (mousePressed) y=mouseY;
    return y;
  }

  float bounce() { //inverses the speed when a border is hit
    if (x > width-r || x < r || y > height || y < 0) {
      speedX = speedX * (-1);
    }
    return speedX; //returns the new speed value
  }
  void collision(object thing, color newColor){ //checks for collision
  if(dist(this.x, this.y, thing.x, thing.y)<this.Rr/2 + thing.r/2){ //checks the distance from the x values and considers the radius (hitbox)
    bColor = newColor; //gives bacground a new color when objects collide
  }
}
}
