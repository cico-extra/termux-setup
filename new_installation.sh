#!/data/data/com.termux/files/usr/bin/bash

apt update
apt install -y emacs tmux mosh termux-api
clear

bash -c "$(curl -fsSL https://git.io/oh-my-termux)"

curl -fsLO https://raw.githubusercontent.com/cico-extra/termux-setup/master/gyndns
curl -fsLO https://raw.githubusercontent.com/cico-extra/termux-setup/master/id_rsa_2048.pub

if [ ! -d "$HOME/.ssh"]; then
 mkdir .ssh
fi
cat id_rsa_2048 > .ssh/authorized_keys

termux-setup-storage

echo Done!

exit