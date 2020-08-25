#include "cadans_s12.h"
#include "midi.h"

namespace CadansS12 {
  volatile bool key_outputs[CADANS_S12_KEY_COUNT] = {0};
  volatile bool key_inputs[CADANS_S12_KEY_COUNT] = {0};

  volatile uint8_t key_location = 0;
  volatile bool new_key_input;
  volatile bool sustain = false;

  volatile bool reset_timeout_state = true;
  volatile unsigned long reset_timeout_millis = 0;
  volatile bool reset_blink_state = true;
  unsigned long reset_blink_millis = 0;

  void setup() {
    pinMode(CADANS_S12_KEY_IN_PIN, INPUT);
    pinMode(CADANS_S12_KEY_OUT_PIN, OUTPUT);
    pinMode(CADANS_S12_LED_STATUS_PIN, OUTPUT);

    enable_reset_timeout();

    pinMode(CADANS_S12_CLOCK_PIN, INPUT);
    attachInterrupt(digitalPinToInterrupt(CADANS_S12_CLOCK_PIN), handle_clock, RISING);

    pinMode(CADANS_S12_RESET_PIN, INPUT);
    attachInterrupt(digitalPinToInterrupt(CADANS_S12_RESET_PIN), handle_reset, RISING);

    pinMode(CADANS_S12_SUSTAIN_PIN, INPUT);
    attachInterrupt(digitalPinToInterrupt(CADANS_S12_SUSTAIN_PIN), handle_sustain, CHANGE);
  }

  void loop() {
    if (reset_timeout_state) {
      blink_status_led();
    } else if (millis() - reset_timeout_millis > CADANS_S12_LED_STATUS_TIMEOUT_MS) {
      enable_reset_timeout();
    }
  }

  void disable_reset_timeout() {
    reset_timeout_millis = millis();

    if (reset_timeout_state) {
      reset_blink_state = false;
      reset_timeout_state = false;

      digitalWrite(CADANS_S12_LED_STATUS_PIN, HIGH);
    }
  }

  void enable_reset_timeout() {
    reset_timeout_state = true;
    digitalWrite(CADANS_S12_KEY_OUT_PIN, LOW);
  }

  void blink_status_led() {
    if (millis() - reset_blink_millis > CADANS_S12_LED_STATUS_BLINK_MS) {
      reset_blink_millis = millis();
      reset_blink_state = !reset_blink_state;

      digitalWrite(CADANS_S12_LED_STATUS_PIN, reset_blink_state);
    }
  }

  void handle_reset() {
    disable_reset_timeout();

    key_location = 0;

    read_key();
    write_key();
  }

  void handle_clock() {
    if (!reset_timeout_state) {
      key_location++;

      read_key();
      write_key();
    }
  }

  void handle_sustain() {
    sustain = !digitalRead(CADANS_S12_SUSTAIN_PIN);
  }

  void read_key() {
    if (key_location < CADANS_S12_KEY_COUNT) {
      digitalWrite(CADANS_S12_KEY_OUT_PIN, LOW);
      digitalWrite(CADANS_S12_KEY_OUT_PIN, LOW);
      digitalWrite(CADANS_S12_KEY_OUT_PIN, LOW);

      new_key_input = digitalRead(CADANS_S12_KEY_IN_PIN);

      if (new_key_input != key_inputs[key_location] && !(sustain && !new_key_input)) {
        MIDI::write_note(key_location + CADANS_S12_MIDI_TRANSPOSE, new_key_input);
        key_inputs[key_location] = new_key_input;
      }
    }
  }

  void write_key() {
    if (key_location < CADANS_S12_KEY_COUNT) {
      if (sustain) {
        digitalWrite(CADANS_S12_KEY_OUT_PIN, key_inputs[key_location] || key_outputs[key_location]);
      } else {
        digitalWrite(CADANS_S12_KEY_OUT_PIN, key_outputs[key_location]);
      }
    } else {
      digitalWrite(CADANS_S12_KEY_OUT_PIN, LOW);
    }
  }

  void set_key_value(uint8_t key, bool value) {
    if (key < CADANS_S12_KEY_COUNT) {
      key_outputs[key] = value;
    }
  }
}
