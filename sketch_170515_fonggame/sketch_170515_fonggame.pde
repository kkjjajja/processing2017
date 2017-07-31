import ddf.minim.*;
Minim minim;
AudioSample ping, pong;

float bx, by;
float vx, vy;
float ballsiz;
float barx, bary;
float barw,  barH;
PImage imgA, imgB, imgC;


void setup() {
  size(640, 640);  
  smooth();
  noStroke();
  noCursor();
  
  bx = width/2;
  by = height/2;
  ballsiz = 50;
  
  vx = 4;
  vy = 4;
  
  barx = width/2;
  bary = 430;
  barw = 80;
  barH = barw/5;
  
  imgA = loadImage("11.png");
  imgB = loadImage("12.png");
  imgC = loadImage("13.png");
  
  minim = new Minim(this);
  ping = minim.loadSample("ping.wav", 512);
  pong = minim.loadSample("pong.wav", 512);
}

void draw() {
  background(0);
  frameRate(60);
  makeBall();
  bounceBall();
  
  //make bar & mov bar
  barx = mouseX;
  stroke(4);
  rect(barx, bary, barw, barH);
} 



void makeBall() {
  int gap =30;
  rect (bx,
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
  }
  else if (height < by) {
    by = random(height/5,height/3);
    bx = width/2;
    frameRate(1); // ball slow
   
  }
}

 
 
 