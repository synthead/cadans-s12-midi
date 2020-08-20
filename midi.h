#ifndef MIDI_H
#define MIDI_H

#include <Arduino.h>

#define MIDI_NOTE_OFF 0x80
#define MIDI_NOTE_ON 0x90

#define MIDI_TRANSPOSE -12

namespace MIDI {
  void setup();
  void loop();
  void set_key_value(uint8_t key_midi_data, bool value);
}

#endif
