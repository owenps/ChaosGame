int numPins = 5;
float[][] vpos = new float[numPins][2]; 
float x,y; 
int type = 2; 
int pin, pin1;

void setup() {
  size(1300,1300);
  background(255);
  
  if(type==3){
    x = 0;
    y = 0;
  }else{
    //polygon maker
    translate(width/2, height/2);
    polygon(0, 0, 600, numPins);
    
    //random point
    strokeWeight(0.1);
    x = random(width);
    y = random(height);
  }

}

void draw() {
  for (int speed=0; speed<10000; speed++){
    point(x,y);
    nextPoint(x,y);
    
  }

}

void polygon(float x, float y, float radius, int npoints) {
  int i = 0; 
  float angle = TWO_PI / npoints;
  beginShape();
  noFill();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
    
    vpos[i][0] = sx+width/2; // x coordinate
    vpos[i][1] = sy+height/2; // y coordinate 
    i++;
    
  }
  endShape(CLOSE);
}

void nextPoint(float px, float py){
  
  //Type 1: Sierpinski Chaos Game (3,5)
  if (type == 1){
    int pin = (int) random(numPins);
    x = (px+vpos[pin][0])/2;
    y = (py+vpos[pin][1])/2;
  }
  
  // Type 2: (4,5)
  if (type == 2){
    int pin1 = (int) random(numPins);
    while (pin1 == pin){
      pin1 = (int) random(numPins);
    }
    pin = pin1;
    x = (px+vpos[pin][0])/2;
    y = (py+vpos[pin][1])/2;
  }
  

}
