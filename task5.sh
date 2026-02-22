 #!/bin/bash
user_create (){
read -p " enter the user to added " user
 read -p " enter the password of $user " password
 if $user &>/dev/null ; then
 echo " the user alredy exits "
 exit 1
 else
         sudo useradd -m $user -p $password
         echo " the  useer is succesfuly created "
 fi }

