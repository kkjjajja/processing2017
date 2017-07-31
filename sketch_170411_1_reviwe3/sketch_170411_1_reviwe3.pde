int sx = 0;
int sy = 0;
float gap = 5;
int w = 100;
 

for (int i=0; i<10; i=i+1) {
  line (sx, sy+gap*i, sx+100, sy+gap*i );
}

for (int i=10; 10<i; i<20; i=i+1) {
  line (sx+20, sy+gap*i, sx+80, sy+gap*i );
}