  

void setup() { 
  size(500,500);  
}
void draw() {
  background(255, 204, 0);
  
  for (int i=0; i<10; i++){
    for (int j=0; j<10; j++){
      drawButton(i*50, j*50, 30);
    }
  }
}

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

//void drawButton(float x, float y, float w) {
//  if ((x<mouseX && mouseX<x+50) && (y<mouseY && mouseY<y+50)) {
//    fill(255, 255, 255);
//    rect(x, y, w, w); 
//    if (mousePressed) {
//      rect(x-5, y-5, w+10, w+10);
//    }
//  } else {
//    fill(0, 0, 0);
//    rect(x, y, w, w);
//  }
//}