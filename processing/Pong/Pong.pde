import ddf.minim.*;
Minim minim;
AudioSample ping, pong;

float bx, by;
float vx, vy;
float bs;
color ballColor;

float barX, barY;
float barW, barH;

void setup() {
  size(640, 480);
  noCursor();
  background(0);
  

  bx = width/2;
  by = height/2;
  bs = 15;
  ballColor = color(255);

  vx = random(-10, 10);
  vy = random(-6, 6);

  barW = 20;
  barH = barW * 5;
  barX = width - barW*2;
  barY = height/2;

  minim = new Minim(this);
  ping = minim.loadSample("ping.wav", 512);
  pong = minim.loadSample("pong.wav", 512);
}

void draw() {
  background(0);

  makeBall();
  moveBall();
  bounceBall();

  // make bar & move bar
  barY = mouseY;
  stroke(4);
  rect(barX, barY, barW, barH);
}


void makeBall() {
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