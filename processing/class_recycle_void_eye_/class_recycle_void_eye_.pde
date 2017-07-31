Eye e, ee;

void setup() {
  size(600, 300);
  noCursor();
  noStroke();
}


  void draw() {
    background (250, 200, 200);
    drawFace(width/5, height/2, 100);
    drawFace(width*3/5, height/2, 300);  
}

  void drawFace(float x, float y, float s) {
    e = new Eye(x-s/3, y, s/2);
  ee= new Eye(x+s/3, y, s/2);
  fill(150,220,255);
  ellipse(x, y, s, s);
    if (mousePressed) {
    e.close();
    ee.close();
  } else {
    e.open();
    ee.open();
  }
}