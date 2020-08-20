#include "cadans_s12.h"
#include "midi.h"

void setup() {
  CadansS12::setup();
  MIDI::setup();
}

void loop() {
  MIDI::loop();
}
