#!/bin/bash
read -p " enter the first A values1 " A 
read -p " enter the secound B  values2 " B 
add_numbers(){
	echo " the sum of the num "
	result=$(($1 + $2))
echo " the ans is $result "
}
 add_numbers "$A" "$B"

