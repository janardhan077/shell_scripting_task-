#!/bin/bash
 echo " to creat a problem "
  read -p "enter the name :" name 
  if [ $name = "jana" ]; then
	  echo " your allowed to the system "
	  echo " the files and directory $(ls -l)"
	  exit 1
  else
	  echo " your not allowed mr/mrs $name "
  fi
