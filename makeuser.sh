#!/bin/bash
################################################
# So $1 is username, $2 is first, $3 is group. #
################################################

adduser --disabled-password $1 --gecos $2,,,,
usermod -g $3 $1
touch /home/Personal/$1_PersonalData       
touch /home/'Care Plan'/$1_CarePlan
touch /home/'Medical Records'/$1_MedicalNotes
touch /home/'Progress Notes'/$1_ProgressNote1
