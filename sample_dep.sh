#!/bin/bash
#
set -e
 the_check() {
	$(whoami)=$f
	echo" your $f "
}
system_up(){
	sudo systemctl update 
	 echo " the sytem is updated "
 }

 install_req(){
	 sudo apt install git
	 sudo apt install ngnix -y
 }
clone_() {
	git clone https://github.com/LondheShubham153/django-notes-app.git

	echo " the cloning process is started "
}
capy(){
	cp django-notes-app /var/www/html
}
start(){
	systemctl update ngnix
	systemctl status ngnix
	systemctl enable ngnix 
}
 echo " the sus "
  the_check
  if [$whoai != root] ;then
	  echo " sry your not root user "
	  exit 1
  fi
  system_up
   install_req
  clone
  capy
  start


