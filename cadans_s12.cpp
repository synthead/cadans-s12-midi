#include "cadans_s12.h"

namespace CadansS12 {
  volatile bool keys[CADANS_S12_KEY_COUNT];
  volatile uint8_t key_location = 0;

  void setup() {
    for (int i = 0; i < CADANS_S12_KEY_COUNT; i++) {
      keys[i] = true;
    }

    pinMode(CADANS_S12_KEY_PIN, OUTPUT);
    write_key();

    pinMode(CADANS_S12_CLOCK_PIN, INPUT);
    attachInterrupt(digitalPinToInterrupt(CADANS_S12_CLOCK_PIN), handle_clock, RISING);

    pinMode(CADANS_S12_READ_PIN, INPUT);
    attachInterrupt(digitalPinToInterrupt(CADANS_S12_READ_PIN), handle_read, RISING);
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
      // FIXME: this workaround is so dumb
      digitalWrite(CADANS_S12_KEY_PIN, keys[key_location]);
      digitalWrite(CADANS_S12_KEY_PIN, keys[key_location]);
      digitalWrite(CADANS_S12_KEY_PIN, keys[key_location]);
    } else {
      digitalWrite(CADANS_S12_KEY_PIN, HIGH);
    }
  }
}
