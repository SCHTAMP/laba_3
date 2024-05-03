#!/bin/bash

./previous_script.sh &> /dev/null &
less /tmp/run.log
