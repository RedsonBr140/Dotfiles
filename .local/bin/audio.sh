#!/bin/bash

current_port=$(pacmd list-sinks | grep "active port" | sed 's/.*active port: //;s/<//;s/>//')
if [[ $current_port == "[Out] Headphones" ]]; then
	pacmd set-sink-port 0 "[Out] Speaker"
	echo "Set to speaker."
elif [[ $current_port == "[Out] Speaker" ]]; then
	echo "Set to headphones."
	pacmd set-sink-port 0 "[Out] Headphones"
fi
