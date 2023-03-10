#!/bin/bash

read -p "Enter 'google.com' to ping, anything else is invalid: " hostname

#The input validation 
if [ "$hostname" != "google.com" ]; then
	echo "Please enter google.com. anything else is invalid"
exit 1
fi
 
ping -c 5 "$hostname" > ping_results.txt

#Print a message that the ping is complete
echo "Congratulations you have successfully added results to ping_results.txt."
