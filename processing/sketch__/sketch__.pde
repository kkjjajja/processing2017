void setup() { 
  noStroke();
  float rectX =25;
  float rectY =25;
  
}
void draw() {
  background(255, 204, 0);

  if ((25<mouseX && mouseX<75) && (25<mouseY && mouseY<75)) {
    fill(255, 255, 255);
    rect(25, 25, 50, 50); 
    if (mousePressed) {
      rect(20, 20, 60, 60);
    }
  } else {
    fill(0, 0, 0);
    rect(25, 25, 50, 50);
  }
}