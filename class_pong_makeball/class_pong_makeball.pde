


Ball[] balls = new Ball[100];

void setup() {
  size(500, 500);

  //balls[0] = new Ball();
  //balls[1] = new Ball();
  //…
  for (int i=0; i<balls.length; i++)
  {    
    balls[i] = new Ball();
  }

  noStroke();
}


void draw() {
  background(0);


  for (int i=0; i<balls.length; i++)
  {
    balls[i].show();
    balls[i].move();
    balls[i].bounce();
  }
}