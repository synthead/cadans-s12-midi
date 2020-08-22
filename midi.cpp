#include "midi.h"
#include "cadans_s12.h"

#include <Arduino.h>

namespace MIDI {
  uint8_t midi_data;
  uint8_t new_message;
  int message = MIDI_NOTE_ON;
  int byte_1 = -1;

  bool led_in_state = false;
  bool led_out_state = false;
  unsigned long led_in_millis = 0;
  unsigned long led_out_millis = 0;

  void setup() {
    Serial1.begin(31250);

    pinMode(MIDI_LED_IN_PIN, OUTPUT);
    pinMode(MIDI_LED_OUT_PIN, OUTPUT);
  }

  void loop() {
    parse_midi_data();
    handle_leds();
  }

  void handle_leds() {
    if (led_in_state && millis() - led_in_millis > MIDI_LED_ILLUMINATION_MS) {
      led_in_state = false;
      digitalWrite(MIDI_LED_IN_PIN, LOW);
    }

    if (led_out_state && millis() - led_out_millis > MIDI_LED_ILLUMINATION_MS) {
      led_out_state = false;
      digitalWrite(MIDI_LED_OUT_PIN, LOW);
    }
  }

  void illuminate_led_in() {
    led_in_state = true;
    led_in_millis = millis();

    digitalWrite(MIDI_LED_IN_PIN, HIGH);
  }

  void illuminate_led_out() {
    led_out_state = true;
    led_out_millis = millis();

    digitalWrite(MIDI_LED_OUT_PIN, HIGH);
  }

  void parse_midi_data() {
    while (Serial1.available() > 0) {
      midi_data = Serial1.read();
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
        set_key_value(byte_1, midi_data > 0x00);
        byte_1 = -1;
      }
    }
  }

  void set_key_value(uint8_t key_midi_data, bool value) {
    CadansS12::set_key_value(key_midi_data + MIDI_CADANS_S12_TRANSPOSE, value);

    illuminate_led_in();
  }

  void write_note(uint8_t note, bool note_on) {
    Serial1.write(MIDI_NOTE_ON);
    Serial1.write(note);
    Serial1.write(note_on ? MIDI_NOTE_FULL_VELOCITY : 0x00);

    illuminate_led_out();
  }
}
