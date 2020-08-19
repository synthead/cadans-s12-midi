#include "cadans_s12.h"

void setup() {
  CadansS12::setup();
}

void loop() {
  CadansS12::keys[24] = false;
  CadansS12::keys[28] = false;
  CadansS12::keys[31] = false;

  delay(500);

  CadansS12::keys[24] = true;
  CadansS12::keys[28] = true;
  CadansS12::keys[31] = true;

  delay(500);
}
