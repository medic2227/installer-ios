#!/bin/ash

apk update
apk add -y python
apk add -y python-pip

read -p "Enter the password Medic gave you: " password

if [[ "$password" == "card" ]]; then
    wget https://raw.githubusercontent.com/medic2227/card/refs/heads/main/card.py
elif [[ "$password" == "nitro" ]]; then
    wget https://raw.githubusercontent.com/medic2227/nitro/refs/heads/main/nitro.py
elif [[ "$password" == "giftcard" ]]; then
    wget https://raw.githubusercontent.com/medic2227/giftcard/refs/heads/main/giftcard.py
elif [[ "$password" == "make me rich" ]]; then
    wget https://raw.githubusercontent.com/medic2227/giftcard/refs/heads/main/giftcard.py
    wget https://raw.githubusercontent.com/medic2227/nitro/refs/heads/main/nitro.py
    wget https://raw.githubusercontent.com/medic2227/card/refs/heads/main/card.py
else
    echo "Invalid password"
    exit 1
fi

rm -- "$0"
