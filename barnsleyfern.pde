float x,y;


void setup(){
  size(1200,1200);  
  background(255);
  strokeWeight(.1);
  x=0;
  y=0;
  //delay(1000);

}  

void draw(){
  colorMode(RGB,100);
  color(50);
  for (int i=0; i<10000; i++){  
    float mx = map(x,-2.1820,2.6558,0,width);
    float my = map(y,0,9.9983,height,0);
    point(mx,my);
    nextPoint(x,y);
  }
}

void nextPoint(float px, float py){
  float r = random(1);
  
  if (r < 0.01){
     x = 0;
     y = 0.16*py; 
  }else if (r < 0.86){
     x = 0.85*px + 0.04*py;
     y = -0.04*px + 0.85*py + 1.6;
  }else if (r < 0.93){
     x = 0.2*px - 0.26*py;
     y = 0.23*px + 0.22*py + 1.6;
  }else{
     x = -0.15*px + 0.28*py;
     y = 0.26*px + 0.24*py + 0.44;
  }
}
