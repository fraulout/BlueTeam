#!/bin/bash

#flush input and output rules
iptables -F INPUT
iptables -F OUTPUT

#INPUT rules
#add rules for ssh connections
#drop the rest
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -j DROP
