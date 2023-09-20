ArrayList<Ball> balls; //list storing the initial ball
ArrayList<Ball> explosions; //list storing the balls that appear as fireworks 
Timer time; //timer object 


void setup(){
size(1920,1080);
balls = new ArrayList<Ball>(); //setting up the arrays 
explosions = new ArrayList<Ball>();
colorMode(HSB);
time = new Timer(1); //set the timer to 1 second 
}

void draw(){
background(0);
float randomx = random(200,1600); //starting the ball off at a random x coordinate
time.CountDown(); //timer starts
//println(time.getTime());
  
  for (int i = 0; i < balls.size(); i++){
// for loop parses through every object in list and displays/moves it 
    Ball ball = balls.get(i);
    ball.move();
    ball.display();  
    
    if(ball.fireworkstart()){ //starting the actual explosion 
      float newX = ball.getX();
      float newY = ball.getY();
      float col = ball.c; 
      balls.remove(i); //remove the ball object in order to create new balls for the explosion
      for (int j = 0; j < random(200,300); j++) { //random amount of particles for explosion
        explosions.add(new Ball(newX,newY, col)); //used the save values to set for the new balls 

    }
}
}
  for (int i = explosions.size()-1; i >= 0; i--){
// parse through list to show/move the explosion 
    Ball explosion = explosions.get(i);
    explosion.shimmer();
    explosion.showfirework();
      
      if(explosion.a < 0){
        explosions.remove(i);
      } //remove the objects from the explosion list once their opacity is 0 (to save memory)
  }
   

if (time.getTime() < 0){
  balls.add(new Ball(randomx, height-10, random(0,255)) );
  time.setTime(1);
  //every 1 second a new initial ball is launched into the screen with a random colour 
}

//println(explosions.size());

}
