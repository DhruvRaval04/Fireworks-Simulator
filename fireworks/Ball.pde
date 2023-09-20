class Ball{
//variables for class
float x;
float y;
float mx;
float my;
float a;
float c;
float randheight;
float g;

//constructor
Ball(float _x, float _y, float col){
a = 255;
mx = random(-5, 5);
my = random(-5, 5); 
g = 0.05;
x = _x;
y = _y;
randheight = random(200,800);
c = col;
}

//function for explosion
void shimmer(){

 x += mx; 
 y += my; 
 my += g; 
 a = a-4; 
 //moves the x and y coordinates by a random amount and increases that amount for y
 //decreases the opacity 
}

//function to move the ball upwards 
void move(){
  my = 4;
  y -= my;
}

//checking if ball has reached its max height, if so start the explosion 
boolean fireworkstart(){
  if (y<=randheight){
    return true;
  }
  else{
    return false;
  }
}

float getY(){
  return y;
}

float getX(){
  return x;
}

//functions to display ball/explosions
void display(){
fill(c,255,a);
ellipse(x,y,10,10);
}

void showfirework(){
fill(c,255,a);
ellipse(x,y, 10, 10);
}

}//end class
