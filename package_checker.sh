#!/bin/bash
read -p "enter the name of of the packages " packages
if dpkg -s "$packages" >/dev/null 2>&1; then
 echo " the packages is already exits "
 exit 1
else
        sudo apt-get update
        sudo apt  install $packages -y
        echo " install done "
fi
~                                                                                                                                                                                             
~                                                                                                                                                                                             
~                                                                                                                                                                                             
~                                                                                                                                                                                             
~                                                                                                                                                                                             
~                                                                                                                                                                                             
~                                                                                                                                                                                             
~                                                                                                                                                                                             
~                                         
