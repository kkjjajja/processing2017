

///**void / setup */

//int sx = 0;
//int sy = 0;
//int w = 100;

//void setup(){
//  frameRate(5);
//}

//void draw(){
//  background(255);

//for (int i=0; i<100; i=i+1) {
//  line (sx+random(15), i*i, sx+w, i*i);
//}
//}







// void setup() (ex)1
// setup() = i am set up ()

//float centerX;
//float centerY;

//void setup() {
//  centerX = width/2;
//  centerY = height/2; 
//}

//void draw() {
//  //background(255,130,130);
//  line(centerX, centerY, mouseX, mouseY);
//}



// // void setup() (ex)2
//   //background(255,130,130);

//float cX, cY;

//void setup() {
//  cX = width/2;
//  cY = height/2; 
//}

//void draw() {
//  background(255,130,130);
//  line(cX, cY, mouseX, mouseY);
//}







// // void setup() (ex)3


int a =0;

void setup(){
  frameRate(5);
}

void draw() {
  a =a+1;
  print(a);
}