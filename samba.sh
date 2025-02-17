#!/bin/bash
apk add samba --no-cache
dialog --yesno "Samba installed!. Do you want to configure it now?" 30 30
config=$?
if [[ $config -eq 0 ]]; then
    dialog --inputbox "Enter the name of the shared folder: " 30 30 
    path_folder=$?
    mkdir -p $path_folder