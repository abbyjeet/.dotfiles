# How to upgrade WSL Ubuntu distribution

1. To make sure the existing release is up-to-date.
  ```
  sudo apt update && sudo apt upgrade 
  ```
2. Remove because WSL doesn't support Systemd directly  
  ```
  sudo apt remove snapd
  ```

3. Edit the release-upgrades file and change the last line to: `prompt=normal`
  ```
    sudo edit /etc/update-manager/release-upgrades
  ```    

4. Now upgrade
  ```
  sudo do-release-upgrade
  ```

5. Exit WSL, execute from PowerShell or CMD, and restart WSL/Ubuntu.
  ```
  wsl --terminate Ubuntu
  ```

> Recommended: `sudo apt purge needrestart` to get rid of unnecessary checks after installing any package.  


### To create backup image of WSL in case you want to restore
```
wsl --export Ubuntu Ubuntu2204clean.tar.gz
```

### To import, one can use:
```
wsl --import UbuntuTest C:\Users\Abhijit\AppData\Local\Packages\UbuntuTest Ubuntu2204clean.tar.gz
```
(source: https://askubuntu.com/questions/1369637/how-do-i-install-ubuntu-21-10-in-wsl-on-windows-11)

### After importing, change default user to your username from the imported distro
1. Run the newly imported distro
2. Create /etc/wsl.conf and add following lines
```
[automount]
enabled=false
root=//wsl.localhost/UbuntuTest/home/abhijit
[user]
default=abhijit
```

