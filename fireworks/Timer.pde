class Timer
{
  float Time; 
  //constructor 
  Timer(float set){
  Time = set;
  }
 
  float getTime(){
  return(Time);
  } //function to easily access value of time
  
  void setTime(float set) 
  {
  Time = set;
  } //function to set time 
  
  void CountDown(){
  Time -= 1/frameRate;
  } //starts the timer - decreases value from 1 based on the frame rate 
}
