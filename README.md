# My dotfiles (Fedora)

## Required
rcm  
git  
oh-my-posh  
eza  
bat  
fzf  
nvim  

## Installing the required packages
```
sudo dnf install rcm git eza bat fzf nvim
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
