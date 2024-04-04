# My dotfiles

## Required
rcm  
zsh  
oh-my-posh 

## Installing RCM and ZSH
```
sudo apt-get install rcm zsh nala
```

## Set ZSH as default shell
```
chsh -s $(which zsh)
```
and logout to take the effect

## Setup Oh My Posh for ZSH
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
