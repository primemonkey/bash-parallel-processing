#!/bin/bash

do_work() 
{
    rand=$((RANDOM % 3 + 1))
    echo "Processing item: $1 on job slot: $2"
    sleep $rand
    echo "Finished processing item: $1 on job slot: $2 in time: $rand"
}

export -f do_work

parallel -j4 do_work {} {%} ::: {1..10}

