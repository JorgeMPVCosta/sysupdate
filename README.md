# SysUpdate

This is a bash script used to update Debian and/or Ubuntu based systems. It updates apt, flatpak and snapcraft packages in one simple step. After install, edit the script accordingly if you don't use Flatpaks or Snaps - by default, all is enabled.

### How to install 
Redirect to your `sysupdate` directory using `cd sysupdate` and then run installer as sudo. Example: 
```
$ chmod +x install 
$ sudo ./install 
```
### How to uninstall 
Run `uninstall.sh` as root. example: 
```
$ sudo ./uninstall.sh 
```
or 
```
$ sudo bash uninstall.sh 
```
