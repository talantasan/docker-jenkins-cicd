#!/bin/bash

NAME=$1
SURNAME=$2
SHOW=$3

if [ "$SHOW" = "true" ]; then
    echo "Hello $NAME $SURNAME"
else
    echo "If you want to see the please check show option"