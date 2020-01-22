class objects{
  
  int x; //position of suns
  int y;
  int r; //radius of suns
  int t; //transparancy variable
  int rayLength = 70; //length of sunrays
  int rayWidth = 10; //width of sunrays
  float nRays = 15; //number of rays
  int sunColor = #F6FF00; //color of sun
  
  
  objects (int temp_x, int temp_y, int temp_r, int temp_t){
    x = temp_x;
    y = temp_y;
    r = temp_r;
    t = temp_t;
  }
  
  void displaySun(){
    fill(sunColor, t);
    noStroke();
    ellipse(x, y, r, r);
    stroke(sunColor, t);
    strokeWeight(rayWidth);
    for(float i=0; i<PI*2; i+=2*PI/nRays){
      line(x, y, x+rayLength*cos(i), y+rayLength*sin(i)); //creates the sunrays with a loop
    }
  }
}
