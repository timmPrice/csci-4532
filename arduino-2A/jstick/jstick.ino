/*
 * This program blinks the onboard led and changes the speed of the blink 
 *            based on the direction of the joystick module
 */

int ledPin = 13;
int joyPinX = A1;
int joyPinY = A0;

int valueX = 0;
int valueY = 0;

void setup() {
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
}

int treatValue(int data) {
  return (data * 9 / 1024) + 48;
}

void loop() {
  valueX = analogRead(joyPinX);
  valueY = analogRead(joyPinY);

  int blinkDelay = map(valueY, 0, 1023, 50, 1000);
  digitalWrite(ledPin, HIGH);
  delay(blinkDelay);
  digitalWrite(ledPin, LOW);
  delay(blinkDelay);
}
