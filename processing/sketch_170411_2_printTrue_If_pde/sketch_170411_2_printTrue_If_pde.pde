int sx = 10;
int sy = 0;
float gap = 10;
int w = 100;
 

for (int i=0; i<10; i=i+1) {
  if(i%2==0) {
      line (sx, sy+gap*i, sx+80, sy+gap*i );
  }
  else{
      line (sx+20, sy+gap*i, sx+60, sy+gap*i );
  }
    
}