#ifndef CADANS_S12_H
#define CADANS_S12_H

#define CADANS_S12_CLOCK_PIN 2
#define CADANS_S12_READ_PIN 3
#define CADANS_S12_KEY_PIN 4

#define CADANS_S12_KEY_LOCATIONS 60

namespace CadansS12 {
  volatile extern bool keys[CADANS_S12_KEY_LOCATIONS + 1];

  void setup();
  void handle_read();
  void handle_clock();
  void set_key();
}

#endif
