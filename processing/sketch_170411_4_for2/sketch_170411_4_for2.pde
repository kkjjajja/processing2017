

void setup() {
  frameRate(20);
}
void draw() {
  for (int i=0; i<10; i++) {
    for (int j=0; j<10; j++) {
      newRect(i*10, j*10, 7);
    }
    
  }
}


void newRect(float x, float y, float w) {
  fill (255, 255, random(0, 255));
  strokeWeight(random(0.2, 2));
  rect(x, y, w, w);
}
