#! /bin/bash
# Script to dump HTTPS session of downloading file by HTTPS and save TLS keys to reassemble file after

# environments
DURATION=5 #how many seconds will tcpdump listen an interface
INTERFACE=enp0s3 #which interface will be listened by tcpdump
USER-AGENT="Mozilla/5.0 (Windows NT 10.0; Win64; x64) "`
	`"AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0" #which useragent will be sent
URL=https://rt-solar.ru/upload/iblock/05b/DDOS_ataki-za-tri-kvartala-2021-goda.pdf

#body
timeout ${DURATION}s tcpdump -i ${INTERFACE} -w dump.pcap &
SSLKEYLOGFILE=`pwd`/keys curl -OA ${USER-AGENT} ${URL}



