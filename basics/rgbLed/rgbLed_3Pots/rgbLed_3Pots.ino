// control RGB LED with three potentiometers
// note that this is a "common cathode" RGB LED
// the R, G, and B LEDs share a negative pin (cathode)
// and each have their own positive pin (anode)

// declare pins
const int redpin = 11;
const int greenpin = 9;
const int bluepin = 10;

const int pot1pin = A2;
const int pot2pin = A1;
const int pot3pin = A0;

// declare variables
int pot1;
int pot2;
int pot3;
int red;
int green;
int blue;

void setup(){  // setup code that only runs once
  // pinMode commands not needed with analog read/write
  // set up serial communication for debugging
  Serial.begin(9600);
}

void loop(){  // code that loops forever
  // read all three potentiometers
  pot1 = analogRead(pot1pin);
  pot2 = analogRead(pot2pin);
  pot3 = analogRead(pot3pin);
  
  // convert 0-1023 analogRead values to 0-255 for use with analogWrite
  red = map(pot1,0,1023,0,255);
  green = map(pot3,0,1023,0,255);
  blue = map(pot2,0,1023,0,255);

  // write values to analog out pins
  analogWrite(redpin,red);
  analogWrite(bluepin,blue);
  analogWrite(greenpin,green);
  
  // print valus to serial monitor
  Serial.print("RGB: ");
  Serial.print(red);
  Serial.print(" ");
  Serial.print(green);
  Serial.print(" ");
  Serial.println(blue);
  
}