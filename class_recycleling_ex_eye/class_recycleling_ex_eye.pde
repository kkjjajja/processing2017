Eye e, ee;

void setup() {
  size(600, 300);
  e = new Eye(width/3, height/2, 100);
  ee= new Eye(width*2/3, height/2, 100);
  noCursor();
}

void draw() {
  background(230, 220, 0);
  if (mousePressed) {
    e.close();
    ee.close();
  } else {
    e.open();
    ee.open();
  }
}