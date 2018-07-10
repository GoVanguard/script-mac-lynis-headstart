# Lynis
Lynis tooling and automation

# Lynis Mac Portable
Automated Lynis Install and local report generation for Macs running version 10.10 or higher.

1. Checks to see if xcode tools are installed, if not, installs them
2. Checks to see if brew is installed, if not, installs it
3. Checks to see if Lynis is installed, if not, installs it with brew
4. Runs an unprivileged Lynis scan and copies the report and log data with the Computer name prefixed to the current users desktop.
