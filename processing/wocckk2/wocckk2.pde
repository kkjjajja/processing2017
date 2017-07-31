import codeanticode.syphon.*;

PGraphics canvas;
SyphonServer server;

PImage img;

void settings() {
  size(600, 600, P3D);
  PJOGL.profile=1;
}

void setup() { 
  canvas = createGraphics(600, 600, P3D);
  server = new SyphonServer(this, "Processing Syphon");
  img = loadImage("aa.png");
}

void draw() {
  canvas.beginDraw();
  canvas.background(100);
  canvas.image(img, 100, mouseY);
  canvas.fill(mouseY*2, 50, 0, mouseY/2);
  canvas.rect(0, 0, 600, 600);
  canvas.endDraw();
  image(canvas, 0, 0);
  server.sendImage(canvas);
}