/* Encoder Library - Basic Example
 * http://www.pjrc.com/teensy/td_libs_Encoder.html
 *
 * This example code is in the public domain.
 */

#include <Encoder.h>

// Change these two numbers to the pins connected to your encoder.
//   Best Performance: both pins have interrupt capability
//   Good Performance: only the first pin has interrupt capability
//   Low Performance:  neither pin has interrupt capability
Encoder myEnc(5, 6);
//   avoid using pins with LEDs attached

void setup() {
  Serial.begin(9600);
  Serial.println("Basic Encoder Test:");
}



void loop() {
  if (myEnc.rotate_flag()) {
    Serial.println(myEnc.read());
  }
  
  if (Serial.available()) {
    Serial.read();
    Serial.println("Reset  knobs to zero");
    myEnc.write(0);
    
  }
}
