void setup() { 

  //background(255, 204, 0);
}
void draw() {
  for (int i=0; i<10; i++) {
    for (int j=0; j<10; j++) {
      rect(i*10, j*10, 5, 5);
    }
  }
}
