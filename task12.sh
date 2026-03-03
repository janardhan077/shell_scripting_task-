#!/bin/bash
log=$1
pre_check(){
        echo " plz enetr the the ./<script> /path "
}
if [ $# -eq 0 ]; then
        pre_check
fi

dir_check () {
        if [ ! -d "$log" ];then
                echo " there is no such dir "
                exit 1
        else
                echo " your dir is present "
                log_check
        fi
}


log_check(){

   com=$(find "$log" -type f -name "*.log" -mtime +7 -exec gzip {} \; -print | wc -l)
   del=$(find "$log" -type f -name "*.gz" -mtime +30 -delete -print | wc -l)
 if [ $? -eq 0 ]; then
        echo "compressed $com files"
        echo " deleted $del files "
else
        echo " not able to some error acured "
        fi
}
dir_check
~            
