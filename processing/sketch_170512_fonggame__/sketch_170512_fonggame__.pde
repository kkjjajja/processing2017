import processing.sound.*;
SoundFile file;

float bx, by;
float vx, vy;
float ballsiz;
float barx, bary;
float barw;
PImage imgA, imgB, imgC;


void setup() {
  size(640, 640);  
  smooth();
 
  imgA = loadImage("11.png");
  imgB = loadImage("12.png");
  imgC = loadImage("13.png");
  ballsiz = 50;
  bx = width/2;
  by = height/2;
  
  vx = 4;
  vy = 4;
  noStroke();
  noCursor();
}

void draw() {
  background(0);
  frameRate(60);
  makeBall();
  bounceBall();
  makeBar();

} 



void makeBall() {
  int gap =30;
  image(imgA, bx, by, ballsiz, ballsiz);
  bx = bx + vx;
  by = by + vy;
  
  if ((bx <= (ballsiz/2)+gap) || (width-((ballsiz/2)+gap) <= bx)) {
    image(imgB, bx, by, ballsiz, ballsiz);
  } else if (by <= (ballsiz/2)+gap) {
    image(imgB, bx, by, ballsiz, ballsiz);
  }else if (( 430-(ballsiz/2)+gap <= by) && (barx <= bx) && (bx <= barx+80)) {
    image(imgB, bx, by, ballsiz, ballsiz);
  }else if (( 430-(ballsiz/2)+gap <= by) && (barx <= bx) && (bx <= barx+80)) {
    image(imgB, bx, by, ballsiz, ballsiz);
  }else if (by+ballsiz/2 > 430+30) {
    image(imgC, bx, by, ballsiz, ballsiz);
     file = new SoundFile(this, "ping.wav");
     file.play();
     
  }
}




void bounceBall() {
  if ((bx <= (ballsiz/2) ) || (width-ballsiz <= bx)) {
    vx = vx * -1 ;
     file = new SoundFile(this, "pong.wav");
     file.play();
  } else if (by <= (ballsiz/2) ) {
    vy = vy *- 1;
     file = new SoundFile(this, "pong.wav");
     file.play();
  }else if (( 430-(ballsiz/2) <= by) && (barx <= bx) && (bx <= barx+80)) {
    vy = vy *- 1;
     file = new SoundFile(this, "pong.wav");
     file.play();
  }  else if (height < by) {
    by = random(height/5,height/3);
    bx = width/2;
    frameRate(1); // ball slow
   
  }
}

void makeBar() {
  barx = mouseX;
  bary = 430;
  barw = 80;
  fill(255);
  rect(barx, bary, barw, barw/5);
}