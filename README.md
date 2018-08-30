# Lynis Mac Portable
Automated Lynis Install and local report generation for Macs running version 10.10 or higher. Script can run autonomously with exception of inputting an admin password for installation of xcode tools. Both .SH and .COMMAND files are the same script but the .COMMAND file is included for convenience as it can be double clicked by users. 

1. Checks to see if xcode tools are installed, if not, installs them.
2. Checks to see if brew is installed, if not, installs it.
3. Checks to see if Lynis is installed, if not, installs it with brew.
4. Runs an unprivileged Lynis scan and copies the report and log data with the Computer name prefixed to the current users desktop.
