#!/usr/bin/env Bash -i

error() {
    printf "⛔ \e[31m$1\e[0m\n"
    exit 1
}

info() {
    printf "ℹ️ $1\n"
}

warn() {
    printf "🔔 \e[33m$1\e[0m\n"
}

progress(){
  pid=$! # Process Id of the previous running command

  spin='🕐🕑🕒🕓🕔🕕🕖🕗🕘🕙🕚🕛'

  i=0
  while kill -0 $pid 2>/dev/null
  do
    i=$(( (i+1) %12 ))
    #j=$(( i%3 ))
    printf "\r${spin:$i:1} $1..." 
    #printf "%0.s." $(seq 1 $j)
    sleep .1
  done
  printf "\r%*s" -50
}

blockProgress(){
  pid=$! # Process Id of the previous running command

  j=0
  while kill -0 $pid 2>/dev/null
  do
    j=$((j+1))
    printf "%0.s▉" $(seq 1 $j)
    sleep .1
  done
}

checkDnf(){
  if [ $(command -v dnf) ]; then
    printf "✅ DNF detected\n"
  else
    error "This script works only on systems (such as Fedora) that use DNF"
  fi
}

installPackages(){
#  if [[ $EUID -ne 0 ]]; then
#   echo "This script must be run with sudo" 
#   exit 1
#  fi
  sudo dnf install -y rcm git eza bat fzf nvim &>/dev/null &
  # sleep 2 &
  progress "Installing packages" 
  printf "\r✅ Required packages installed\n"
}

installOhMyPosh(){
  curl -s https://ohmyposh.dev/install.sh | bash -s &>/dev/null &
  # sleep 2 &
  progress "Installing Oh-My-Posh"
  printf "\r✅ OhMyPosh installed\n"
}

cloneDotFiles(){
  mkdir -p $(dirname ~/.ssh/known_hosts)
  ssh-keyscan github.com >> ~/.ssh/known_hosts
  git clone https://github.com/abbyjeet/.dotfiles.git &>/dev/null &
  # sleep 2 &
  progress "Getting dotfiles"
  printf "\r✅ dotfiles retrieved\n"
}

finalMessage(){
  rcup
  echo
  echo "🆗 dotfiles setup is done"
  echo
  info "Execute 'source ~/.bashrc' command to activate the dotfiles"
  echo
#  info "Help:"
#  printf "\tRun rcup command and source ~/.bashrc to activate the dotfiles"
#  echo
#  printf "\tRun rcdn command and exit the terminal to deactivate the dotfiles"
#  echo
}

checkDnf
cd ~/
installPackages
installOhMyPosh
cloneDotFiles
finalMessage

# info "This is info!"
# warn "This is warning!!"
# error "This is error"

# echo -ne '🏁🏁🏁🏁🏁                     (33%)\r'
# sleep 1
# echo -ne '🏁🏁🏁🏁🏁🏁🏁🏁               (66%)\r'
# sleep 1
# echo -ne '🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁🏁   (100%)\r'
# echo -ne '\n'

# i=1
# sp="/-\|"
# echo -n ' '
# while true
# do
#     printf "\b${sp:i++%${#sp}:1}"
# done

# ping -c 4 www.google.com >/dev/null &
# progress "pinging google..."
