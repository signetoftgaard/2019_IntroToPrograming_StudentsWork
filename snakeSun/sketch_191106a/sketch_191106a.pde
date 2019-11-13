objects sun;
objects sun1;
int num = 50;
objects[] snakeSun;
float scale = 0.8;

void setup() {
  size(1000, 600);
    sun=new objects(500,300,100, 255);
    sun1=new objects(mouseX, mouseY, 100, 100);
  
  snakeSun = new objects [50];
  
  for (int i = 0; i<num; i++){
    snakeSun[i] = new objects(mouseX, mouseY, 100-i, 100-i*2);
  }
}

void draw() {
  background(#FF0000);
  sun.displaySun();
  sun1.x=mouseX;
  sun1.y=mouseY;
  sun1.displaySun();
  
    for (int i = num-1; i > 0; i--) {
    snakeSun[i].x=snakeSun[i-1].x;
    snakeSun[i].y=snakeSun[i-1].y;
   
  }
  
    snakeSun[0].x = mouseX;
    snakeSun[0].y = mouseY;

    for(int i = 0; i < num; i++){
      snakeSun[i].displaySun();
    }
}
