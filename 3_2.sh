#!/bin/bash

SCRIPT=$HOME/bin/3_1.sh

function call_with_combined_args {
    combined_args=$(printf "%s " "$@")
    $SCRIPT $combined_args
}

function call_with_separate_args {
        $SCRIPT "$@"
}

call_with_combined_args "$@"

call_with_separate_args "$@"
