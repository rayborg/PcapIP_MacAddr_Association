#!/bin/bash
# Give the script a pcap file
tshark -r $1 -T fields -e ip.src -e eth.src | awk '{if ($2)print $1"\t"$2}' | sort -u