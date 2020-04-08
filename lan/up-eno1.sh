#! /bin/bash 

# This script is used to set up the interface configuration of :
if [[ "$1" -eq 1 ]] ; then 
	#device 1 aka hp 
	inet="eno1"
	ip_addr="10.0.0.10/24"
elif [[ "$1" -eq 2 ]] ; then
	#device 2 aka acer
	inet="enp2s0"
	ip_addr="10.0.0.20/24"
fi 


if [[ "$2" == a ]] ; then 
	sudo ip addr add $ip_addr dev $inet
elif [[ "$2" == d  ]] ; then 
	sudo ip addr del $ip_addr dev $inet
fi

exit
