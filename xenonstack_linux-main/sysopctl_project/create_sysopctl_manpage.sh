#!/bin/bash

# Define the detailed manual page content
MANUAL_CONTENT='\" Manpage for sysopctl
.TH SYSOPCTL 1 "October 2024" "1.0" "sysopctl manual"
.SH NAME
sysopctl \- A command-line tool for system operations

.SH SYNOPSIS
.B sysopctl
<command> [options]

.SH DESCRIPTION
sysopctl is a versatile utility designed for managing system operations, including service management, file backups, and log analysis. It aims to streamline administrative tasks through an intuitive command-line interface.

.SH COMMANDS
.TP
.B logs analyze
Analyze system logs and display critical log entries. This command uses
.B journalctl
to filter and show log entries with a priority level of "critical."

.TP
.B backup <path>
Backup the specified directory or file to the /backup directory. This command utilizes
.B rsync
to efficiently copy files while preserving permissions and timestamps.

.SH OPTIONS
.TP
.B -h, --help
Show help message and exit. Use this option to display a summary of commands and options available in sysopctl.

.TP
.B -v, --version
Display the version of sysopctl and exit.

.SH EXAMPLES
.TP
# Analyze system logs
.B sysopctl logs analyze
This command will display the last 10 critical log entries from the system journal.

.TP
# Backup a specific file
.B sysopctl backup "/mnt/c/Users/jaiku/Desktop/html.pdf"
This command will back up the specified PDF file to the /backup directory.

.SH AUTHOR
Written by [Your Name].

.SH REPORTING BUGS
Report bugs to <your-email@example.com>.

.SH SEE ALSO
.B rsync(1), journalctl(1)
Refer to these man pages for additional details on the commands used by sysopctl.
'

# Create the manual page file
MANUAL_FILE="/usr/share/man/man1/sysopctl.1"

echo "$MANUAL_CONTENT" | sudo tee $MANUAL_FILE > /dev/null

# Update the man database
sudo mandb

echo "Detailed manual page for sysopctl created and updated successfully!"
