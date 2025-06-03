# My dotfiles

## If you use DNF, you can install and activate my dotfiles using this command
```
curl -s https://abbyjeet.github.io/.dotfiles/setup.sh | bash -s
```

## OR do it manually by following these steps

> Some packages like eza may not be available in the dnf repo. \
> Please download those from their respective sources, \
> eg. in case of eza, download from https://github.com/eza-community/eza/releases

## Required
rcm  
git  
oh-my-posh  
eza  
bat  
fzf  
nvim  
tmux

## Installing the required packages
```
sudo dnf install -y --skip-unavailable rcm git eza bat fzf nvim tmux
```

## Set BASH as default shell, if not already (check with `echo $0`)
```
chsh -s $(which bash)
```
and logout to take the effect

## Setup Oh My Posh for BASH
First follow the guide here to install OhMyPosh: [https://ohmyposh.dev/docs/installation/linux](https://ohmyposh.dev/docs/installation/linux)

## Clone
> Assuming SSH is setup with Github, otherwise use HTTP clone
```
git clone git@github.com:abbyjeet/.dotfiles.git
```

## Activate dotfiles
```
rcup
```

## Deactivate dotfiles
```
rcdn
```


### Guide on how to create and manage using RCM
https://distro.tube/guest-articles/managing-dotfiles-with-rcm.html  
https://github.com/thoughtbot/rcm
