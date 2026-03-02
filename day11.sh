#!/bin/bash
 set -euo pipefail
 host_os_info (){
	 echo ""
	 echo " The HOST is $(hostname) "
	 source /etc/os-release
         echo "The OS is $PRETTY_NAME"
 }
system_uptime(){
	echo ""
	echo "  The SYSTEM UPTIME is" 
	         uptime
}
disk_usage (){
	echo ""
	echo " The DISK USAGE is "
	         df -h 
   }
   
memory_usage (){
	echo ""
	echo " The MEMORY USAGE IS "
	        free -h 
 }
cpu_usage (){
	echo ""
	echo " The current CPU USAGE "
	top -b -n 1 | head -n 5
}
main(){
	host_os_info
	system_uptime
	disk_usage
	memory_usage
	cpu_usage
}
main
