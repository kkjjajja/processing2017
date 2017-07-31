import processing.serial.*;
import cc.arduino.*;   //import Arduino


Arduino aa;  //= Arduino arduino; 
             //Arduino= int  arduino= ballsize
int value ;  //for println (A0)


void setup() {
  aa = new Arduino(this, Arduino.list()[3], 57600); 
  /*[0] =>  aa = new Arduino(this, Arduino.list()[3], 57600); 
               or
            aa = new Arduino(this, "/dev/tty.usbmodem1411", 57600); 
     ballsize = 13; connect arduino [this] = now used aeduino 
     more fast than siral fast 9600<57600 */
}


void draw() {
 value = aa.analogRead(0) ;
 println(value); 
 
}