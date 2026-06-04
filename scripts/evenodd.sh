#!/bin/bash
is_even() {
    if [ $(($1 % 2)) -eq 0 ]; then
        echo "true"
    else
        echo "false"
    fi
}
