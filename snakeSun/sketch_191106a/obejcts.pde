class objects{
  
  int x;
  int y;
  int r;
  int t;
  int rayLength = 100;
  int rayWidth = 7;
  float nRays = 20;
  int sunColor = #F6FF00;
  
  
  objects (int temp_x, int temp_y, int temp_r, int temp_t){
    x = temp_x;
    y = temp_y;
    r = temp_r;
    t = temp_t;
  }
  
  void displaySun(){
    fill(sunColor, t);
    stroke(#000000, t);
    ellipse(x, y, r, r);
    stroke(sunColor, t);
    strokeWeight(rayWidth);
    for(float i=0; i<PI*2; i+=2*PI/nRays){
      line(x, y, x+rayLength*cos(i), y+rayLength*sin(i));
    }
  }
}
