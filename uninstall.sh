#!/bin/bash

# SysUpdate Uninstaller 
# Jun 26, 2020 - Version 0.1

# please run it as su

log=/tmp/sysupdate.log

printf "\n[ ** ] Removing Files         : ";
if ls /usr/bin/sysupdate >> $log; then {
	rm -rf /usr/bin/sysupdate;
	printf "Removed!\n";
}; else {
	printf "error: No installer found\n";
}; fi 

printf "[ ** ] Removing Desktop Icon  : ";
if ls /usr/share/icons/SysUpdateIcon.png >> $log; then {
	rm -rf /usr/share/icons/SysUpdateIcon.png;
	printf "Removed!\n";
}; else {
	printf "error: no file has been found\n";
}; fi 

printf "[ ** ] Removing Desktop Entry : ";
if ls /usr/share/applications/sysupdate.desktop >> $log; then {
	rm -rf /usr/share/applications/sysupdate.desktop;
	printf "Removed!\n";
}; else {
	printf "error: no file has been found\n";
}; fi 

operation() {
    sudo cp sysupdate /usr/bin;
    sudo chmod +x /usr/bin/sysupdate;
    sudo cp SysUpdateIcon.png /usr/share/icons/SysUpdateIcon.png;
    sudo cp sysupdate.desktop /usr/share/applications/sysupdate.desktop;
}

printf "\n[ ** ] Successfully uninstalled\n"; echo && exit 0;
