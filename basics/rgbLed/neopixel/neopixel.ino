//neopixels are addressable leds. any color bw range of r-g-b and their combination can be outputted.
//using 1 pin i.e. din, we can lightup a series of leds.
#include <Adafruit_NeoPixel.h>


#define PIN            5 // Define the pin number to which the NeoPixel is connected
#define NUMPIXELS      25  // Define the number of NeoPixels in your strip

Adafruit_NeoPixel pixels = Adafruit_NeoPixel(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

void setup() {
  pixels.begin();  // Initialize the NeoPixel library
  pixels.setBrightness(50);  // Set the brightness (0 to 255)
}

void loop() {
  // Set the color of the first NeoPixel (index 24 i.e 25th led the last one in this circuit)
  pixels.setPixelColor(24, pixels.Color(255, 0, 0));  // RGB color: Red
  pixels.show();  // Send the updated pixel colors to the hardware
  delay(1000);    // Wait for 1 second (you can adjust the delay as needed)

  // Turn off the first NeoPixel, u only turn off the one that u turned on.
  pixels.setPixelColor(0, pixels.Color(0, 0, 0));  // RGB color: Black (turn off)
  pixels.show();  // Send the updated pixel colors to the hardware
  delay(1000);    // Wait for 1 second before repeating
}
