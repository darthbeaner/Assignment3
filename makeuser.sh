#!/bin/bash
# So $1 is username, $2 is first, $3 is group.
# This will create the following files:
#       Personal
#       Care Plan
#       
# Then create the following directories:
#       Progress Notes
#       Medical Records
#
#######################################################

adduser --disabled-password $1 --gecos $2,,,,
usermod -g $3 $1
touch /home/$1/Personal
setfacl -m g:Manager:rwx /home/$1/Personal
setfacl -m g:Patient:r /home/$1/Personal
setfacl -m g:Health_Care_Providers:rwx /home/$1/Personal
setfacl -m g:Doctor:rwx /home/$1/Personal
touch /home/$1/'Care Plan'
setfacl -m g:Manager:rwx /home/$1/'Care Plan'
setfacl -m g:Patient:r /home/$1/'Care Plan'
setfacl -m g:Health_Care_Providers:rwx /home/$1/'Care Plan'
setfacl -m g:Doctor:rwx /home/$1/'Care Plan'
mkdir /home/$1/'Progress Notes'
setfacl -m g:Manager:rwx /home/$1/'Progress Notes'
setfacl -m g:Patient:r /home/$1/'Progress Notes'
setfacl -m g:Health_Care_Providers:rwx /home/$1/'Progress Notes'
setfacl -m g:Doctor:rwx /home/$1/'Progress Notes'
mkdir /home/$1/'Medical Records'
setfacl -m g:Manager:rwx /home/$1/'Medical Records'
setfacl -m g:Patient:r /home/$1/'Medical Records'
setfacl -m g:Health_Care_Providers:rwx /home/$1/'Medical Records'
setfacl -m g:Doctor:rwx /home/$1/'Medical Records'