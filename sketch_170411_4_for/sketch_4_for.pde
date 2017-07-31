void setup() { 

  //background(255, 204, 0);
}
void draw() {
  for (int y=0; y<10; y++) {
    for (int i=0; i<10; i++) {
      line(i*10, y*20, i*10, y*20+10);
    }
  }
}