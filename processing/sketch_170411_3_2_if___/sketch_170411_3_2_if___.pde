

void setup() { 
  noStroke();
  size(500, 500);
}
void draw() {
  background(255, 204, 0);
 
  drawButton (25, 25, 50);


 void drawButton(float x, float y, float w) {
  if ((x<mouseX && mouseX<x+50) && (y<mouseY && mouseY<y+50)) {
    fill(255, 255, 255);
    rect(x, y, w, w); 
    if (mousePressed) {
      rect(x-5, y-5, w+10, w+10);
    }
  } else {
    fill(0, 0, 0);
    rect(x, y, w, w);
  }
}