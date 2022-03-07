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
wsl --export Ubuntu Ubuntu2110_fresh_install.tar
```

### To import, one can use:
```
wsl --import Ubuntu2110Test <directory> Ubuntu2210_fresh_install.tar
```

(source: https://askubuntu.com/questions/1369637/how-do-i-install-ubuntu-21-10-in-wsl-on-windows-11)
