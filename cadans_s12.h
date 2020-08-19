#ifndef CADANS_S12_H
#define CADANS_S12_H

#define CADANS_S12_CLOCK_PIN 2
#define CADANS_S12_READ_PIN 3
#define CADANS_S12_KEY_PIN 4

#define CADANS_S12_KEY_COUNT 61

namespace CadansS12 {
  volatile extern bool keys[CADANS_S12_KEY_COUNT];

  void setup();
  void handle_read();
  void handle_clock();
  void write_key();
}

#endif
