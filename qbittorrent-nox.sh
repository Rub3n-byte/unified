#!/bin/bash
apk add --no-cache qbittorrent-nox

password=$(qbittorrent-nox | grep "The WebUI administrator password was not set. A temporary password is provided for this session" file | awk -F': ' '{print $2}')

echo You can access qbittoorrent-nox at http://localhost:8080 with the user admin and the password $password