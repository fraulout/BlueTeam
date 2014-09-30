#!/bin/bash

#flush the current rules
iptables -F INPUT
iptables -F OUTPUT

#create rules to allow port 80 and 443 from anywhere
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT

#drop the rest of the packets
iptables -A INPUT -j DROP
