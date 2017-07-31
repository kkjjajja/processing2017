import processing.serial.*;
import cc.arduino.*;   //import Arduino
Arduino aa;
int value ;  


Ball[] balls = new Ball[100];

void setup() {
  size(500, 500);
  aa = new Arduino(this, Arduino.list()[3], 57600); 
  //balls[0] = new Ball();
  //balls[1] = new Ball();
  //…
  for (int i=0; i<balls.length; i++)
  {    
    balls[i] = new Ball();
  }

  noStroke();
}


void draw() {
  background(0);
  value = aa.analogRead(0) ;

  for (int i=0; i<balls.length; i++)
  {
    balls[i].show();
    balls[i].move();
    balls[i].bounce();
  }
}