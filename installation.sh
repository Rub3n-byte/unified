#!/bin/bash
dialog --checklist "Please select the software you want to install:" 20 60 7 \
1 "File Manager Web GUI for administrate your files" off \
2 "Rclone for sync your files with cloud storage" off \
3 "qBittorrent for download files from torrent" off \
4 "Samba for share files with other devices" off \
5 "Nextcloud for sync your files with cloud storage" off \
6 "Plex for stream your media files" off \
7 "Jellyfin for stream your media files" off 2> /tmp/selections

selections=$(cat /tmp/selections)
echo $selections
for selection in $selections; do 
    echo Installing:
    case $selection in
        1)
            echo "File Manager Web GUI for administrate your files"
            
            ;;
        2)
            echo "Rclone for sync your files with cloud storage"
            installed+=("rclone")
            bash rclone.sh
            ;;
        3)
            echo "qBittorrent for download files from torrent"
            installed+=("qbittorrent-nox")
            bash qbittorrent-nox.sh
            ;;
        4)
            echo "Samba for share files with other devices"
            ;;
        5)
            echo "Nextcloud for sync your files with cloud storage"
            ;;
        6)
            echo "Plex for stream your media files"
            ;;
        7)
            echo "Jellyfin for stream your media files"
            ;;
    esac
done