import processing.serial.*;
int i;
Serial myPort;
float light;
float coror;
public static int ON = 1;
public static int OFF = 0;
void setup() {
size (900, 900);  
delay(3000);  
String portName = Serial.list()[1];  
println(Serial.list());
myPort = new Serial(this, portName, 9600);  
}
void draw() {
background(255);  
ellipse(width/2, height/2,light*0.8,light*0.8);  
fill(coror-300,100,150);  
noStroke();
}  
void serialEvent(Serial p) {
String message = myPort.readStringUntil(10);  
if (message != null)  
{
print("Received: ");
println(message); 
light = float(message);  
coror = float(message);  
}
}
 