#!/bin/bash

USER=$(whoami)

HOME=$(eval echo ~$USER)

SUM_LENGHT=$(echo "$USER$HOME" | wc -c)

echo "$USER $HOME $SUM_LENGHT"
