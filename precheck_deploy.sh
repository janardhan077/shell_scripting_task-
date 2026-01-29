#!/bin/bash
 set -e

check_user (){
	echo " ********************************************* your the ******************************************************** "
	                                                       whoami 
}
check_disk(){
	echo " ********************************************************  the disk stats is ************************************** " 
                                                       			df -h
										df 
}
check_memory(){
	echo " ************************************************************the memmory of the system*********************************************** "
                                                                        	free -h 
}
check_package(){
	echo " the package i dont know "
}
main(){
	check_user
	check_disk
	check_memory
	check_package
}
main

