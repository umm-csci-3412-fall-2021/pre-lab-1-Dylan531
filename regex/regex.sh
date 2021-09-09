#!/bin/bash

sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' r0_input.txt > r0_output.txt
awk 'match($0,/\* I am ([a-zA-Z]+). My favorite sandwich is ([a-zA-Z]+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' r1_input.txt > r1_output.txt
awk 'match($0,/\* sandwich with (([a-zA-Z]+\.)+)\s([a-zA-Z]+ [a-zA-Z]+)/, groups) {print "1. " groups[1] "\n" "2. " groups[3] "\n" }' r2_input.txt > r2_output.txt



