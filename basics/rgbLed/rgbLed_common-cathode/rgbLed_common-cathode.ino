const int redPin = 9;    // Pin for the red component of the RGB LED
const int bluePin = 10;  // Pin for the green component
const int greenPin = 11;   // Pin for the blue component

void setup() {
  pinMode(redPin, OUTPUT);
  pinMode(greenPin, OUTPUT);
  pinMode(bluePin, OUTPUT);
}

void loop() {
  // Call the function with different colors to see the RGB LED transition smoothly
  fadeRGB(255, 0, 0);   // Red
  delay(1000);
  fadeRGB(0, 255, 0);   // Green
  delay(1000);
  fadeRGB(0, 0, 255);   // Blue
  delay(1000);
  fadeRGB(255, 255, 0); // Yellow
  delay(1000);
}

// Function to smoothly transition between colors
void fadeRGB(int redValue, int greenValue, int blueValue) {
  // Smoothly fade the red component
  for (int i = 0; i <= redValue; i++) {
    analogWrite(redPin, i);
    delay(5);
  }

  // Smoothly fade the green component
  for (int i = 0; i <= greenValue; i++) {
    analogWrite(greenPin, i);
    delay(5);
  }

  // Smoothly fade the blue component
  for (int i = 0; i <= blueValue; i++) {
    analogWrite(bluePin, i);
    delay(5);
  }
}
