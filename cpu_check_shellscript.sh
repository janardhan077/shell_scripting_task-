!/bin/bash
 read -p " do u want check the hieght cpu usage in cuurent  " cpu
 if 
         [ "$cpu" = "yes" ] ;then
         echo " checking the cpu helath "
         top -H | head -n 1 $date
           echo " this is the cuurent highest cpu using unit "
           exit 1
   elif
           [ "$cpu" = "no" ] ;then
           echo " exiting the process "

   else
           echo "  ivalid input or unbale to check the process "
            echo " mailing admin  -mail "
            exit 0
 fi
~               
