#!/bin/bash 
 read -p "enter your name " name
 echo " wellcome $name "
 welcome_user(){
	 echo " wellcome to the shell scripting practice $name  "
	echo " current date:$(date)"
 }
 welcome_user
