#include <LiquidCrystal_I2C.h>

//int irPin = A0;
int irPin = 13;
int ledPin = 9;       // Replace with the pin number where your LED is connected
int buzzerPin = 10;   // Replace with the pin number where your buzzer is connected

LiquidCrystal_I2C lcd(32, 16, 2);  // I2C address 0x27, 16 column and 2 rows

void setup() {
  
  pinMode(irPin, INPUT);
  pinMode(ledPin, OUTPUT);    // Set the LED pin as OUTPUT
  pinMode(buzzerPin, OUTPUT); // Set the buzzer pin as OUTPUT

  lcd.init();   
  lcd.setCursor(0, 0);
  lcd.setBacklight(1);
  lcd.display();// Initialize the LCD
  lcd.print("started yayy");
  delay(2000);
}

void loop() {
  //int irValue = analogRead(irPin);
  int irValue = digitalRead(irPin);
  Serial.print("irValue = ");
  Serial.println(irValue);

  lcd.setCursor(0, 0); // Set the cursor to the beginning of the second line
  
  if (irValue == HIGH) {
    digitalWrite(ledPin, HIGH);     // Turn on the LED when irValue is 1
    tone(buzzerPin, 1000);           // Turn on the buzzer at a frequency of 1000 Hz
    lcd.clear();
    lcd.print("IR Detected   ");    // Display on the LCD when IR is detected
  } else {
    digitalWrite(ledPin, LOW);      // Turn off the LED otherwise
    noTone(buzzerPin);               // Turn off the buzzer
    lcd.print("No IR Detected");     // Display on the LCD when no IR is detected
  }

  delay(500);
  lcd.clear(); // Clear the LCD for the next iteration
}
