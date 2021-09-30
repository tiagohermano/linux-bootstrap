#!/bin/bash

jack_control ds alsa
jack_control dps device hw:HD2
jack_control dps rate 48000
jack_control dps nperiods 2
jack_control dps period 64
sleep 10
a2j_control --ehw
a2j_control --start
pactl load-module module-jack-sink channels=2
pactl load-module module-jack-source channels=2
pacmd set-default-sink jack_out
pacmd set-default-source jack_in
