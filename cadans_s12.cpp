#include "cadans_s12.h"

namespace CadansS12 {
  volatile bool keys[CADANS_S12_KEY_COUNT] = {0};
  volatile uint8_t key_location = 0;

  void setup() {
    pinMode(CADANS_S12_KEY_PIN, OUTPUT);
    write_key();

    pinMode(CADANS_S12_CLOCK_PIN, INPUT);
    attachInterrupt(digitalPinToInterrupt(CADANS_S12_CLOCK_PIN), handle_clock, RISING);

    pinMode(CADANS_S12_RESET_PIN, INPUT);
    attachInterrupt(digitalPinToInterrupt(CADANS_S12_RESET_PIN), handle_read, RISING);
  }

  void handle_read() {
    key_location = 0;
    write_key();
  }

  void handle_clock() {
    key_location++;
    write_key();
  }

  void write_key() {
    if (key_location < CADANS_S12_KEY_COUNT) {
      digitalWrite(CADANS_S12_KEY_PIN, keys[key_location]);
    } else {
      digitalWrite(CADANS_S12_KEY_PIN, LOW);
    }
  }

  void set_key_value(uint8_t key, bool value) {
    if (key < CADANS_S12_KEY_COUNT) {
      keys[key] = value;
    }
  }
}
