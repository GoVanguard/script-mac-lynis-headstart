#!/bin/bash
# Check to see if xcode tools is installed, and install it if it is not
command -v make >/dev/null 2>&1 || { echo >&2 "Installing XCode Tools Now"; \
xcode-select --install; }
# Check to see if Homebrew is installed, and install it if it is not
command -v brew >/dev/null 2>&1 || { echo >&2 "Installing Homebrew Now"; \
yes '' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; }
# Check to see if Lynis is installed, and install it if it is not
command -v lynis >/dev/null 2>&1 || { echo >&2 "Installing Lynis Now"; \
brew install lynis; }
# Running lynis audit
lynis audit system --pentest
# Copying files to the Desktop
myComputerName=$(networksetup -getcomputername)
echo "Copying Scan files to Desktop $myComputerName.lynis"
cp /tmp/lynis-report.dat ~/Desktop/$myComputerName.lynis-report.dat
cp /tmp/lynis.log ~/Desktop/$myComputerName.lynis.log
# Finishing up
echo "All done! Copy and send $myComputerName.lynis-report.dat and $myComputerName.lynis.log from the desktop"	
