#!/bin/bash
 read -p " enter the name of the file : "  file
 if [ -f "$file" ]; then
	 echo " the file exits "
 else
	 echo " the file does not exits "
 fi
