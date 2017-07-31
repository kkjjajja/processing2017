// This sketch shows how to use the Amplitude class to analyze a
// stream of sound. In this case a sample is analyzed. Smooth_factor
// determines how much the signal will be smoothed on a scale
// form 0-1.

import processing.sound.*;

// Declare the processing sound variables 
SoundFile sample;
Amplitude rms;

// Declare a scaling factor
float scale=5;

// Declare a smooth factor
float smooth_factor=0.25;

// Used for smoothing
float sum;
////
float bX, bY;
float vx, vy;
float barX, barY;
float barW, barH;
float ballSiz, ballR;

public void setup() {
  size(640, 640);

  //Load and play a soundfile and loop it
  sample = new SoundFile(this, "beat.aiff");
  sample.loop();

  // Create and patch the rms tracker
  rms = new Amplitude(this);
  rms.input(sample);
  ////
  smooth();
  noStroke();
  noCursor();

  bX = 10;
  bY = 10;

  vx = 4;
  vy = 4;

  barX = width/2;
  barY = 430;
  barW = 80;
  barH = barW/5;
}      

public void draw() {
  // Set background color, noStroke and fill color
  background(125, 255, 125);
  noStroke();
  frameRate(60);
  makeBall();
  makeBarmoveBar();
  bounsBall();
}
void makeBall() {
  fill(255, 0, 150);
  // smooth the rms data by smoothing factor
  sum += (rms.analyze() - sum) * smooth_factor;  
  // rms.analyze() return a value between 0 and 1. It's
  // scaled to height/2 and then multiplied by a scale factor
  float rms_scaled=sum*(height/2)*scale;
  // We draw an ellispe coupled to the audio analysis
  ballSiz = rms_scaled/4;
  ellipse(bX, bY, ballSiz, ballSiz);
  bX = bX + vx;
  bY = bY + vy;
}
void makeBarmoveBar() {
  barX = mouseX;
  rect(barX, barY, barW, barH);
}
void bounsBall() {
  ballR = ballSiz/2;
  if ((bX < ballR ) || ((width - ballR  )< bX)) {
    vx = vx * -1;
  } else if ( bY < ballR ) {
    vy = vy *-1;
  } else if ( (430 < bY) && (barX < bX) && (bX < barX + barW) ) {
     vy = vy *-1;
  }else if ( height < bY ) {
     bX = width/2;
     bY = height/4;
     frameRate(1); // ball slow
  }
}