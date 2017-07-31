class Ball {

  float x, y;
  float vx, vy;
  float w;
  color c;

  Ball() {
    x  = width/2;
    y  = height/2; 
    w  = random(0.1, 5);
    vx = random(-10, 10);
    vy = random(-10, 10);
    c  = (255);
  }// just like void setup;

  void show() {
    fill(c);
    rect(x, y, w, w);
  }

  void move() {
    x = x + vx;
    y = y + vy;
  }


  void bounce() {
    if ((x <= 0) || (width-w <= x)) {
      vx = vx * -1;
      changShape( );
    }

    if ((y <= 0) || (height-w <= y)) {
      vy = vy * -1;
      changShape( );
    }
  }
  
  void changShape(  ){
  
    w = random(1, 50);
    c =  color(random(200), random(200), random(220), random(200));
}
}