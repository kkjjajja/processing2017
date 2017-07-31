import cc.arduino.*;
import org.firmata.*;
import processing.serial.*;
Serial myPort;
 
Arduino arduino; 
 
void setup() 
{
arduino = new Arduino(this, Arduino.list()[3], 57600);
arduino.pinMode(0,Arduino.INPUT);
}
 
void draw()
{
  String message = myPort.readStringUntil(10);  
 print("Received: ");
println(message); 
}
 