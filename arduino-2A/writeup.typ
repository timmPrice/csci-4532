== Writeup Assignment 2A

=== § A 
\
videos link | #link("https://augustauniversity.box.com/s/0yre3zd68b8xkwn7v36trwunudff9m10")
\ \ 
I chose to practice implementing 2 of the sensors I will need for my final project. 
#par("
    1. Joystick module
    2. Passive Buzzer
") \

=== § B
#par("
    The joystick module is made up of 2 potentiometers which measure the distance the \"stick\" has moved in on both the x and y axis. To implement it I used 4-pins, ground, 5V, VRx, and VRy. All of which seem self explanatory. 
    The Buzzer is a 'piezo' element that vibrates causing an audible tone when fed a square wave. It only has a positive and negative wire which get connected to any data pin (so it can receive a wave) and ground respectively.  
") 

#link("https://en.wikipedia.org/wiki/Piezoelectricity")
 \ \  
=== § C
\
#emph(text(blue)[test code for joystick])
```
/*
 * This program blinks the onboard led and changes the speed of the blink 
 *         based on the direction of the joystick module y-axis
 *
 *     see references for details of joystick implementation source
 */

int ledPin = 13;
int joyPinX = A1;
int joyPinY = A0;

int valueX = 0;
int valueY = 0;

void setup() {
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);           // see doc references
}

int treatValue(int data) {
  return (data * 9 / 1024) + 48;        // see doc references
}

void loop() {
  valueX = analogRead(joyPinX);
  valueY = analogRead(joyPinY);

  int blinkDelay = map(valueY, 0, 1023, 50, 1000);      // see doc references
  digitalWrite(ledPin, HIGH);
  delay(blinkDelay);
  digitalWrite(ledPin, LOW);
  delay(blinkDelay);
}
```
\ \ \ 
#emph(text(blue)[test code for passive buzzer])
```
/*
 *    This program activates the passive buzzer sensor 
 *    tone and noTone functions generate square waves 
 */ 

int buzzer = 8;

void setup() {
  pinMode(buzzer, OUTPUT);
}

void loop() {
  tone(buzzer, 1000);
  delay(500);
  noTone(buzzer);
  delay(500);
}
```
==== References

1. elegoo board datasheet | #link("https://epow0.org/~amki/car_kit/Datasheet/ELEGOO%20UNO%20R3%20Board.pdf")
2. uno blink | #link("https://docs.arduino.cc/tutorials/uno-rev3/Blink/")
3. interfacing a joystick | #link("https://docs.arduino.cc/tutorials/generic/interfacing-a-joystick/")
3. tone() function | #link("https://docs.arduino.cc/language-reference/en/functions/advanced-io/tone/")
4. noTone() function | #link("https://docs.arduino.cc/language-reference/en/functions/advanced-io/noTone/")
