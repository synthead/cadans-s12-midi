#include "midi.h"
#include "cadans_s12.h"

#include <Arduino.h>

namespace MIDI {
  uint8_t midi_data;
  uint8_t new_message;
  int message = MIDI_NOTE_ON;
  int byte_1 = -1;

  void setup() {
    Serial1.begin(31250);
    Serial.begin(9600);
  }

  void loop() {
    while (Serial1.available() > 0) {
      midi_data = Serial1.read();

      char that[20];
      sprintf(that, "%x", midi_data);
      Serial.println(that);
      new_message = midi_data & 0b11110000;

      if (new_message >= 0x80 && new_message <= 0xEF) {
        message = new_message;
        byte_1 = -1;
      } else if (byte_1 == -1) {
        switch (message) {
          case MIDI_NOTE_OFF:
            set_key_value(midi_data, false);
            break;
          case MIDI_NOTE_ON:
            byte_1 = midi_data;
            break;
        }
      } else {
        Serial.println("here");
        set_key_value(byte_1, midi_data > 0x00);
        byte_1 = -1;
      }
    }
  }

  void set_key_value(uint8_t key_midi_data, bool value) {
    CadansS12::set_key_value(key_midi_data + MIDI_TRANSPOSE, value);
  }
}
