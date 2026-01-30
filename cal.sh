#!/bin/bash
 <<cases
task for the case to create a sample scripting 
cases
echo " enter your choice "
echo " 1: add "
echo " 2: sub "
echo " 3: mult "
echo " 4: div "
 read -p " enter the num one " num1
 read -p " enter the num two " num2
	read -p "enther the choice " choice
	case $choice in 
		1)

			result=$(echo "$num1+$num2 " | bc )
	      echo " the ans is $result "

		;;
		
	2)
 result=$(($num1-$num2))
 echo " the ans is $result "
		;;
		
	3)
		result=$(($num1*$num2))
		echo " the ans is $result "
		;;
		
	4)
		result=$(($num1%$num2))
		echo " the ans is $result "
		;;
		
	*)
		echo " invalid choice "
		exit 1
esac

		

