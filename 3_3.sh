#!/bin/bash

if [ "$1" == "" ]; then
    echo "Help"
    echo "Usage: $0 <script_file>"
    exit 1
fi

script_file=$1

if [ ! -f "$script_file" ]; then
    echo "Script file $script_file doen't exist"
    exit 1
fi

echo "Testing with args '1' '2' '3'"
"$script_file" 1 2 3

echo "Testing with five random nums"
#for i in {1..5}; do
    random_numbers=$( jot -r 5 )
    #random_numbers=($(echo $RANDOM; echo $RANDOM; echo $RANDOM; echo $RANDOM; echo $RANDOM))
    #echo "Сгенерированные случайные числа: ${random_numbers[@]}"
    
    "$script_file" $random_numbers
#done

echo "Testing with args 'foo' 'bar' 'foobar' 'foo bar'"
"$script_file" foo bar foobar "foo bar"

echo "Testing with args 'foo' '--foo' '--help' '-l'"
"$script_file" foo --foo --help -l

