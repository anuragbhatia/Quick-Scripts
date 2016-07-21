#!/bin/bash

# Script for whois with details like origin ASN, visible pool etc via Team-Cymru
# read -p 'Enter IP address : ' inputip
hostname=v4.whois.cymru.com


whois -h $hostname " -c -p $1"
