
// int x=7 ; 




void setup() { 
  //function = englisge(number...)  all the thing is function.
  size(1000, 500);
  frameRate(4);
}






void draw() {
  // gugudan(7); // 9 = "argument"
 
  println(jaminkown(mouseX, mouseY, 10));
  
}



//***********************tish is function)
void gugudan(int x) //in the ()'s int x = parament
{
  println(x+" * 1 = "+ x*1);  
  println(x+" * 2 = "+ x*2);  
  println(x+" * 3 = "+ x*3);  
  println(x+" * 4 = "+ x*4);  
  println(x+" * 5 = "+ x*5);  
  println(x+" * 6 = "+ x*6);  
  println(x+" * 7 = "+ x*7);  
  println(x+" * 8 = "+ x*8);  
  println(x+" * 9 = "+ x*9);
}





float jaminkown(float x, float y, float w)
{
  fill(random(10, 200), random(10, 250), random(10, 250), 80);
  noStroke();
  rect(x, y, 100, w, 5);//m u
  rect(x, y+100, 100, w, 5);// m down
  rect(x, y, w, 100, 5);//m L
  rect(x+100, y, w, 110, 5);//mR
  rect(x+130, y, w, 110, 5);// I
  rect(x, y+130, w, 30, 5);//N hight
  rect(x, y+160, 140, w, 5);//N width
  
  return (x+y);
  
}