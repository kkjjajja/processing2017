float  x, y;

void setup(){
  x = 10 ;
  y= f(x, 2); //100
  y= f(x, 3);//1000
  y= f(x, 5);//10000
  print(y);  
}

void draw(){
}

float f(float a, float b){
  return pow(a,b);
  }
  