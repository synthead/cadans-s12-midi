#ifndef CADANS_S12_H
#define CADANS_S12_H

#include <Arduino.h>

#define CADANS_S12_CLOCK_PIN 2
#define CADANS_S12_RESET_PIN 3
#define CADANS_S12_KEY_PIN 4

#define CADANS_S12_KEY_COUNT 61

namespace CadansS12 {
  volatile extern bool keys[CADANS_S12_KEY_COUNT];

  void setup();
  void handle_read();
  void handle_clock();
  void write_key();
  void set_key_value(uint8_t key, bool value);
}

#endif
