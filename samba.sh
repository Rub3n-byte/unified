#!/bin/bash
read -p "Please enter the name of the shared folder: " path_folder
if [[ ls $path_folder ]]; then
    echo "The folder already exists"
else
    mkdir $path_folder
    echo "The folder has been created"
fi
