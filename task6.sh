#!/bin/bash
echo " hello bro "
read -p " do u want to start the system update (y/n)" to
if [ $to = "y" ];then
        echo " staring the update ans installing the docker "
read -p " enetr the name of the severice " name
        sudo apt-get upadate
        sudo apt install $name -y
        echo ************ done *********** "

else
        echo " canceling  the process"
fi
~                                                                               
~                                     
