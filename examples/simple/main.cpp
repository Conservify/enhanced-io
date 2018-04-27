#include <Arduino.h>
#include <SPI.h>
#include <eio/Wire.h>

void setup() {
    Serial.begin(119200);

    while (!Serial) {
        delay(100);
    }
}

void loop() {

}
