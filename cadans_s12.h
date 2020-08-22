#ifndef CADANS_S12_H
#define CADANS_S12_H

#include <Arduino.h>

#define CADANS_S12_CLOCK_PIN 2
#define CADANS_S12_RESET_PIN 3
#define CADANS_S12_KEY_OUT_PIN 4
#define CADANS_S12_KEY_IN_PIN 5

#define CADANS_S12_KEY_COUNT 64

#define CADANS_S12_MIDI_TRANSPOSE 24

#define CADANS_S12_SUSTAIN_PIN 7

#define CADANS_S12_LED_STATUS_PIN 9
#define CADANS_S12_LED_STATUS_BLINK_MS 300
#define CADANS_S12_LED_STATUS_TIMEOUT_MS 100

namespace CadansS12 {
  void setup();
  void loop();
  void disable_reset_timeout();
  void enable_reset_timeout();
  void blink_status_led();
  void handle_reset();
  void handle_clock();
  void write_key();
  void read_key();
  void set_key_value(uint8_t key, bool value);
  void handle_sustain();
}

#endif
