#!/bin/bash
source_path=$1

 usage(){
	 echo "<./path> <source_path > "
 }
  if [ $# -eq 0 ] ;then
	  usage
	  exit 1
  fi
  dir_check(){
	  if [ ! -d "$source_path" ] ; then 
		  echo " the dir  dont exsits "
		  exit 1
	  else
		  echo " the dir_check is completed  good to go  "
	  fi 
  }
count_log() {
    echo " ************Counting the number of INFO lines************"

    count=$(grep -c "INFO" "$source_path")

    echo "Total INFO  lines: $count"
}
error_events(){
	echo " ************ the error  Events ******************** "
	error=$(grep -n "ERROR" "$source_path" |\
		awk -F: '{print "line "$1": "$2, $3, $4, $5}'|sort)
           echo " $error "	
}
top_warn_check (){
	echo "************* Top 5 WARN Messages **************** " 
	warn=$(grep "WARN" $source_path| awk '{$1=$2=$3=""; print}' | sort | uniq -c | sort -rn | head -5)
	echo " $warn "
}
gen_log(){
timestamp=$(date '+%y-%m-%d')


{       echo "" 
	echo " ************Counting the number of INFO lines************"
       	echo " $count "
	echo ""
	echo " ************ the error  Events ******************** "
	echo " $error "
	echo ""
	echo "************* Top 5 WARN Messages **************** "
	echo " $warn "
	echo " ********************end*********************** "
	echo ""
} > log_reports_$timestamp.txt 2>/dev/null

}
Archive(){
	dir=archive/
	if [ -d "$dir" ]; then

		echo " exsits"
		mv /home/jana/devops/devops_day19/log_reports_$timestamp.txt /home/jana/devops/devops_day19/archive
                 echo " successfully done "
		exit 1
	else
	       mkdir $dir
	       mv /home/jana/devops/devops_day19/log_reports_$timestamp.txt /home/jana/devops/devops_day19/archive
	      
	fi

}
main (){
	count_log
	error_events
	top_warn_check
	gen_log
	Archive
}
main
