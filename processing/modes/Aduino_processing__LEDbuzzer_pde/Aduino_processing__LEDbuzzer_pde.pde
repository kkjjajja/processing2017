import cc.arduino.*;
import org.firmata.*;
import processing.serial.*;
import cc.arduino.*;
Arduino arduino; 

void setup() { 
  noStroke();
  arduino = new Arduino(this, Arduino.list()[3], 57600);
  arduino.pinMode(8, Arduino.OUTPUT);
  arduino.pinMode(9, Arduino.OUTPUT);
  float rectX =25;
  float rectY =25;
}
void draw() {
  background(20, 230, 200);

  if ((25<mouseX && mouseX<75) && (25<mouseY && mouseY<75)) {
    fill(255, 200, 150);
    rect(25, 25, 50, 50); 
    arduino.digitalWrite(8, Arduino.HIGH);
    arduino.analogWrite(9,0);

    if (mousePressed) {
      fill(255, 50, 50);
      rect(20, 20, 60, 60);
      arduino.analogWrite(9,1000);
    }
  } else {
    fill(255, 70, 150);
    rect(25, 25, 50, 50);
     arduino.analogWrite(9,0);
       arduino.digitalWrite(8, Arduino.LOW);
  
  }
}