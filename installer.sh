#! /bin/bash

if [ -z $(which kitty) ]; then
  curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
  echo "ln -i -s ~/.local/kitty.app/bin/kitty /usr/bin/kitty"
  sudo ln -i -s ~/.local/kitty.app/bin/kitty /usr/bin/kitty
fi
which kitty

cat > ~/.bashrc.kitty-alias << EOF
alias imgcat="kitty +kitten icat"
alias it2dl="kitty +kitten transfer --direction=receive"
EOF

cat >> ~/.bashrc << EOF
source ~/.bashrc.kitty-alias
EOF
