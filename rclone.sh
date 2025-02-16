#!/bin/bash
apk add --no-cache rclone
dialog --yesno "Rclone installed!. Do you want to configure it now?" 30 30
config=$?
dialog --yesno "Rclone installed!. Do you want to install a WebGUI?" 30 30
webgui=$?
if [[ $webgui -eq 0 ]]; then
    apk add --no-cache rclone-browser
fi
if [[ $config -eq 0 && $webgui -eq 0 ]]; then
    read -p "Enter the password for the WebGUI: " password
    rclone rcd --rc-web-gui --rc-user=$USER --rc-password=$password
elif [[ $config -eq 0 && $webgui -eq 1 ]]; then
    rclone config
else 
    echo "Rclone not configured, you can configure it later with the command 'rclone config'"
fi
echo localhost >> ports.txt
echo 5572 >> portx.txt