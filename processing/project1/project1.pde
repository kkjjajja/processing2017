//Aduino_processing_firmata_ightsencer_println

import processing.serial.*;
import cc.arduino.*;   //import Arduino
Arduino aa;  //= Arduino arduino; 
//Arduino= int  arduino= ballsize
int value ;  //for println (A0)
int num;

import ddf.minim.*;
import ddf.minim.ugens.*;
Minim       minim;
AudioOutput out;
Oscil       wave;
float freq;

void setup() {
  size(500,500);
  aa = new Arduino(this, Arduino.list()[3], 57600); 
  /*[0] =>  aa = new Arduino(this, Arduino.list()[3], 57600); 
   or
   aa = new Arduino(this, "/dev/tty.usbmodem1411", 57600); 
   ballsize = 13; connect arduino [this] = now used aeduino 
   more fast than siral fast 9600<57600 */
  minim = new Minim(this);
  out = minim.getLineOut();
  wave = new Oscil( 440, 0.5f, Waves.SINE );
  wave.patch( out );
  
  noStroke();
}


void draw() {
  background(0); 
  value = aa.analogRead(0) ;
  println(value); 
  num = int(map(value, 40, 700, 50, 1));
  freq = map(value, 40, 700, 0, 600);
  wave.setFrequency( freq );
  ellipse(width/2, height/2,value,value);  
fill(value,200,value-50);  
  
  
}

 