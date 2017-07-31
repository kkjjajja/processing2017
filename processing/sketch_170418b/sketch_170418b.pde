float bx, by;
float vx, vy;
float bs;
float barx, bary;
float barw;


void setup() {
  size(640, 480);
  bs = 15;
  bx = width/2;
  by = height/2;
  
  vx = random(-5, 5);
  vy = random(-5, 5);
  noStroke();
  noCursor();
}

void draw() {
  background(0);

  makeBall();
  moveBall();
  bounceBall();
  makeBar();

} 



//If i make function or coment i can found easly than before 




void makeBall() {
  //fill(random(200, 255), random(200, 255), random(200, 255));
  rect(bx, by, bs, bs);
}



void moveBall() {
  bx = bx + vx;
  by = by + vy;
}



void bounceBall() {
  if ((bx <= 0) || (width-bs <= bx)) {
    vx = vx * -1 ;
  } else if ((by <=0) || (height-bs <= by)) {
    vy = vy *- 1;
  }else if ((by == 430) && (barx <= bx) && (bx <= barx+80)) {
    vy = vy *- 1;
  }
}



void makeBar() {
  barx = mouseX;
  bary = 430;
  barw = 80;
  fill(255);
  rect(barx, bary, barw, barw/5);
}