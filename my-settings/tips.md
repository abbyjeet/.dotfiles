# Virtualization:
### Windows 11

Source: https://www.reddit.com/r/gnome/comments/q1wy49/install_windows_11_in_gnome_boxes/

When you start the process to install you have the option for Express Install , skip that, and Custumize RAM (more then 4GB) and DiskSpace (more then 64GB).

Force Shutdown the VM

Then open terminal and run

qemu-img resize \~/.local/share/gnome-boxes/images/win11 124G

this is needed because at least in my case gnome-boxes was creating image with 50GB size, because it recognizes Windows 11 as Windows 10.

After resizeing the VM image, turn on the VM.

When you start the installation process , go into Toubleshhoting , and open Command Prompt.

then run regedit

Once you’re inside the Registry Editor, navigate to the following location using the left-hand side menu

HKEY_LOCAL_MACHINE\SYSTEM\Setup

Once you arrive at the correct location, right-click on Setup and choose New > Key, and create key LabConfig. Inside LabConfig create 3 new Dword (32-bit) Value registries, BypassSecureBootCheck, BypassRAMCheck, BypassTPMCheck, set value 1 to all 3 registries.

After closing the regedit, simply execute setup.exe and installation will start and complete with no issues :D
