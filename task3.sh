#!/bin/bash
 read -p " enter the file name " file
  check_file(){
	   if [ -f "$1" ] ; then
		   echo " the file exits "
		   exit 0
	   else
		   echo " the does not exits "
		   exit 1
		  
	   fi
   }
file_create(){
	 read -p " do u need to creat that that file yes/no " create
	
	 if [ "$create" ==  "yes" ]; then
		read -p " enter the file name " name
		touch $name
		echo " file is created succesfully "
      else 
echo " thank u "
exit 1
	 fi
 }


  check_file "$file"
  file_create 
