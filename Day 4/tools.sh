#!/bin/bash

echo "Enter the Tool You want to Use 
1)Nmap
2)Find Ip address
3)ping
4)traceroute"
read -p "Enter the Option (1/2/3/4/5) - " option
sleep 2
echo You choose Option $option
case $option in
	1)
		figlet Nmap
		sleep 1
		read -p "Enter the Ip address - " ipAdd
		nmap $ipAdd
		;;
	2)
		figlet Ip address
		sleep 1
		read -p "Any Flag (if not just press Enter ) - " flag
		echo "--collecting details--"
		sleep 1
		ip addr $flag
		;;
	3)
		figlet ping
		read -p "Enter IP address to Ping - " pingIp
		echo "Pinging........."
		sleep 1
		ping pingIp
		echo "---Done---"
		;;	
	4)
		figlet traceroute
		read -p "Enter Domain/Ip to traceroute of -- " traceIp
		echo "Starting Trace Routing..." 
		sleep 1
		traceroute $traceIp
		;;

	*)
		echo "No options Matches"
		echo "Invalid Response"
		;;
esac
