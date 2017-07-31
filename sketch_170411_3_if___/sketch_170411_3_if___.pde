void setup() { 
  noStroke();
  float rectX =25;
  float rectY =25;
  
}
void draw() {
  background(20 ,230, 200);

  if ((25<mouseX && mouseX<75) && (25<mouseY && mouseY<75)) {
    fill(255, 200, 150);
    rect(25, 25, 50, 50); 
    if (mousePressed) {
      rect(20, 20, 60, 60);
    }
  } else {
    fill(255, 70, 150);
    rect(25, 25, 50, 50);
  }
}