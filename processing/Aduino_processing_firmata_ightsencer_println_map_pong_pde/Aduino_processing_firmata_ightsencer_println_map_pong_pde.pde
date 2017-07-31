import processing.serial.*;
import cc.arduino.*;   //import Arduino
Arduino aa;  //= Arduino arduino; 
//Arduino= int  arduino= ballsize
int value ;  
int num;
import ddf.minim.*;
import ddf.minim.ugens.*;
Minim minim;
AudioSample ping, pong;
AudioOutput out;
Oscil       wave;
float freq;

float bx, by;
float vx, vy;
float bs;
color ballColor;
color barColor;

float barX, barY;
float barW, barH;
float colorr ;
float collor ;
void setup() {
  size(640, 480);
  noCursor();
  background(0);
  aa = new Arduino(this, Arduino.list()[3], 57600); 
  minim = new Minim(this);
  ping = minim.loadSample("ping.wav", 512);
  pong = minim.loadSample("pong.wav", 512);
  out = minim.getLineOut();
  wave = new Oscil( 440, 0.5f, Waves.SINE );
  wave.patch( out );

  bx = width/2;
  by = height/2;
  bs = 15;


  vx = random(-10, 10);
  vy = random(-6, 6);

  barW = 20;
  barH = barW * 5;
  barX = width - barW*2;
  barY = height/2;
}

void draw() {

  background(0);
  value = aa.analogRead(0) ;
  println(value); 
  makeBall();
  moveBall();
  bounceBall();

  // make bar & move bar
  barY = map(value, 400, 1023, 1, 480-barH);
  stroke(4);
  collor = map(value, 400, 1023, 150, 255);
  barColor = color(250, collor, collor/255);
  fill(barColor);
  rect(barX, barY, barW, barH);
}


void makeBall() {
  colorr = map(value, 400, 1023, 1, 255);
  ballColor = color(250, colorr, 255/colorr);
  fill(ballColor);
  noStroke();
  rect(bx, by, bs, bs);
}


void moveBall() {
  bx = bx + vx;
  by = by + vy;
}


void bounceBall() {
  if ((bx <= 0) || (width-bs <= bx)) {
    vx = vx * -1;
    ping.trigger();
  }

  if ((by <= 0) || (height-bs <= by)) {
    vy = vy * -1;
    ping.trigger();
  }

  if (barX-bs <= bx) {
    if (barY <= by && by <= barY+barH) {
      bx = barX-bs;
      vx = vx * -1;
      pong.trigger();
      vx = random(-10, 10);
      vy = random(-6, 6);
      bs = random(2, 30);
    }
  }
}