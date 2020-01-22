objects sun;
objects sun1;
objects cbSun;
int num = 50;
objects[] snakeSun; //making the array
int rect_x = 10;
int rect_y = 10;
int rect_w = 20;
int rect_h = 15;

int num2 = 30;
int [] trail_x = new int[num2];
int [] trail_y = new int[num2];
int index_p = 0;

void setup() {
  size(1000, 600);
    //sun=new objects(500,300,100, 255); //parameters of middle sun
    sun1=new objects(mouseX, mouseY, 100, 100); //parameters of snake sun
    cbSun=new objects(width/2, height/2, 20, 20);
  
  snakeSun = new objects [50]; //
  
  for (int i = 0; i<num; i++){ //loop that creates the snake, 100-i makes the size smaller, 100-i*2 makes the transparancy change
    snakeSun[i] = new objects(mouseX, mouseY, 100-i, 100-i*2);
  }
}

void draw() {
  background(#FF0000);
  //sun.displaySun(); //displays middle sun
  fill(#000000);
  rect(rect_x, rect_y, rect_w, rect_h);
  rect_x = rect_x + 1;
  rect_y = rect_y + 1;
  
  trail_x[index_p]=rect_x;
  trail_y[index_p]=rect_y;
  index_p = (index_p+1) % num2;
  for(int i = 0; i < num2; i++){
    int pos = (index_p + i) % num2;
    float w = (rect_w + i);
    float h = (rect_h + i);
    int t = (100-i*2);
    fill(#000000, t);
    rect(trail_x[pos], trail_y[pos], w, h);
  }
  
  
  
  
  
    for (int i = num-1; i > 0; i--) {
    snakeSun[i].x=snakeSun[i-1].x;
    snakeSun[i].y=snakeSun[i-1].y;
   
  }
  
    snakeSun[0].x = mouseX; //the snake sun moves with the mouse
    snakeSun[0].y = mouseY;

    for(int i = 0; i < num; i++){ //displays the snake sun
      snakeSun[i].displaySun();
    }
}
