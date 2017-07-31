Eye[] eyes = new Eye[16];

int xy = 5;

void setup() {

  size(1200, 1200);

  int n = 0;
  for (int j=1; j<xy; j++) { 
    for (int i=1; i<xy; i++) { 
      eyes[n] = new Eye(width*i/5, height*j/5, 50 );
      //eyes[n] = new Eye(width*(i/5), j*20, 50 );
      n++;
    }
  }
  noCursor();
  //noStroke();
}



void draw() {
  background (250, 200, 200);
  if (mousePressed) {
    for (int i=0; i<eyes.length; i++)
    {
      eyes[i].close();
    }
  } else {
    for (int i=0; i<eyes.length; i++)
    {
      eyes[i].open();
    }
  }
}