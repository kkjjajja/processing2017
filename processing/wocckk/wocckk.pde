import codeanticode.syphon.*;

PGraphics canvas;
SyphonServer server;

PImage img;

void settings() {
  size(600, 600, P3D);
  PJOGL.profile=1;
}

void setup() { 
  canvas = createGraphics(400, 400, P3D);
  server = new SyphonServer(this, "Processing Syphon");
  img = loadImage("aa.png");
  //img = loadImage("bb.png");
}

void draw() {
  background(100);
  image(img, 100, mouseY);
  fill(mouseY*2, 50, 0, mouseY*1.5);
  rect(0,0,600,600);
  server.sendImage(canvas);
}