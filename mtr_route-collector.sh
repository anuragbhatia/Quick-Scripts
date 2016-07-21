#!/bin/bash

# Script for collecting MTR samples

# Add list of domains, IP's to monitor here. Avoid customisation below. 
Hosts=(google.com google.in 8.8.8.8)

#Define number of Packets below
PacketCount=1


#Logic for collecting date
Year=`date '+%Y'`
Month=`date '+%B'`
Date=`date '+%d'`

#Logic for collecting time
Hour=`date '+%H'`
TimeStamp=`date '+%H_%M'`


#Logic for creation & selection of directories
mkdir -p ~/Route_Collector/$Year/$Month/$Date/$Hour
WorkDir=~/Route_Collector/$Year/$Month/$Date/$Hour


#Logic for using domain array + executing traces
for Host in "${Hosts[@]}"
do
FileName="$Host"_"$TimeStamp".txt
mtr -wrc $PacketCount $Host > $WorkDir/$FileName
done
