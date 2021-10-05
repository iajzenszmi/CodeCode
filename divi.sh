#!/bin/bash
var="I must wear a mask at all times"
var2="by Ian Martin Ajzenszmidt, Melbourne Victoria Australia 5th October 2021"
 
# Run date and hostname command and store output to shell variables
now="$(date)"
computer_name="$(hostname)"
 
#
# print it or use the variable
# Variable names are case sensitive $now and $NOW are different names
#
for ((i=1;i<=10;i++)); do
echo "$var"
done
echo "$var2"
echo "Current date and time : $now"
echo "Computer name : $computer_name"
echo ""
