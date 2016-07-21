#!/bin/bash

# Script for domain name to IP/ASN/BGP block mapping
hostname=v4.whois.cymru.com


IP=$(dig $1 a +short)
whois -h $hostname " -c -p $IP"
