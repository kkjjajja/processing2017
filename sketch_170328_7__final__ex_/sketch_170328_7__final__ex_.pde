
int sx = 0;
int sy = 0;
float gap = 5;
float w = 25;

void setup() {
  frameRate(5);
  noCursor();
}

void draw() {
  background(255, 130, 130);
  
  //sx=mouseX;
  //sy=mouseY;
  //gap=mouseY/5;
  w=random(5,20);
  
  for (int i=0; i<mouseX/5; i=i+1) {
    line (sx, sy+gap*i, sx+w, sy+gap*i);
  }
}