#ifndef MIDI_H
#define MIDI_H

#include <Arduino.h>

#define MIDI_LED_IN_PIN 6
#define MIDI_LED_OUT_PIN 8
#define MIDI_LED_ILLUMINATION_MS 20

#define MIDI_NOTE_OFF 0x80
#define MIDI_NOTE_ON 0x90
#define MIDI_NOTE_FULL_VELOCITY 0x7F

#define MIDI_CADANS_S12_TRANSPOSE -12

namespace MIDI {
  void setup();
  void loop();
  void parse_midi_data();
  void handle_leds();
  void illuminate_led_in();
  void illuminate_led_out();
  void set_key_value(uint8_t key_midi_data, bool value);
  void write_note(uint8_t note, bool note_on);
}

#endif
