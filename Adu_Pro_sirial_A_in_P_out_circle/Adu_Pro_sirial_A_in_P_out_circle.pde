//Aduino_processing_sirial_A_in_P_out 
import processing.serial.*;
Serial myPort;
int i;
float sensorValue;
 
void setup() {
size (900, 900);  
delay(3000);  
String portName = Serial.list()[1];  
println(Serial.list());
myPort = new Serial(this, portName, 9600);  
}
void draw() {
background(255);  
ellipse(width/2, height/2,5000/sensorValue,5000/sensorValue);  
fill(sensorValue,200,sensorValue-50);  
ellipse(width/3, height/1,sensorValue*5,sensorValue*5);  
fill(200,sensorValue-50,sensorValue);  
ellipse(width/2, height/5,sensorValue*3,sensorValue*3);  
fill(200,sensorValue,150);  
noStroke();
}  
void serialEvent(Serial p) {
String message = myPort.readStringUntil(10);  
if (message != null)  
{
print("Received: ");
println(message); 
sensorValue = float(message);  
}
}



/*
Arduino Cod


//Aduino_processing_circl_1
const int sensorPin = A0;    
const int ledPin = 9;     
int sensorValue = 0;         
int sensorMin = 1023;        
int sensorMax = 0;          


void setup() {
  Serial.begin(9600);
  pinMode(13, OUTPUT);
  digitalWrite(13, HIGH);

  while (millis() < 5000) {
    sensorValue = analogRead(sensorPin);
    if (sensorValue > sensorMax) {
      sensorMax = sensorValue;
    }
    if (sensorValue < sensorMin) {
      sensorMin = sensorValue;
    }
  }
  digitalWrite(13, LOW);
}

void loop() {
  Serial.println(sensorValue);
  sensorValue = analogRead(sensorPin); 
  sensorValue = map(sensorValue, sensorMin, sensorMax, 0, 255);
  sensorValue = constrain(sensorValue, 0, 255);
  delay(100);
}


//Aduino_processing_circl_1
const int sensorPin = A0;    
const int ledPin = 9;     
int sensorValue = 0;         
int sensorMin = 1023;        
int sensorMax = 0;          


void setup() {
  Serial.begin(9600);
  pinMode(13, OUTPUT);
  digitalWrite(13, HIGH);

  while (millis() < 5000) {
    sensorValue = analogRead(sensorPin);
    if (sensorValue > sensorMax) {
      sensorMax = sensorValue;
    }
    if (sensorValue < sensorMin) {
      sensorMin = sensorValue;
    }
  }
  digitalWrite(13, LOW);
}

void loop() {
  Serial.println(sensorValue);
  sensorValue = analogRead(sensorPin); 
  sensorValue = map(sensorValue, sensorMin, sensorMax, 0, 255);
  sensorValue = constrain(sensorValue, 0, 255);
  delay(100);
}



 */
 