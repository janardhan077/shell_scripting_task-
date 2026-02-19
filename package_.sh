#!/bin/bash
echo " hello bro "
read -p " do u want to start the system update " to
if [ $to = "yes" ];then
        echo " staring the update ans installing the docker "
        sudo apt-get upadate
        sudo apt install docker.io -y
else
        echo " canceling  the process"
fi
~                                                                                                                                                                                             
~                          
