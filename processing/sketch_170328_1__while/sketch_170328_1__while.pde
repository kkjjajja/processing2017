//line(10, 20, 90, 20);
//line(10, 40, 90, 40);
//line(10, 60, 90, 60);
//line(10, 80, 90, 80);

//line(0, 0, 100, 0);
//line(0, 10, 100, 10);
//line(0, 20, 100, 20);
//line(0, 30, 100, 30);
//line(0, 40, 100, 40);
//line(0, 50, 100, 50);
//line(0, 60, 100, 60);
//line(0, 70, 100, 70);
//line(0, 80, 100, 80);
//line(0, 90, 100, 90);

int sx = 0;
int sy = 0;
float gap = 10;
int w = 100;
int repeat = 10;

int i = 0; 

while (i < repeat) {
  line (sx, sy+gap*i, sx+w, sy+gap*i);
  i = i+ 1 ;
}