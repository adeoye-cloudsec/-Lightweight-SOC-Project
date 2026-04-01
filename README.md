# -Lightweight-SOC-Project
## Overview
This project simulates a lightweight Security Information and Event Management (SIEM) system using Bash scripting to analyze Linux authentication logs and detect security threats

## Objectives
The aim of this project was to utilize the linux command shell to run an automated script which constantly monitors the log files on a linux to detect authentication , ssh usage, privilege escalation,sudo abuse, unauthorized user creation. In the process,the script functions as a lightweight SIEM tool and gives an overall report on analyzed logs of the system. This hands on practical combined bash scripting alongside log analysis, in order to demonstrate and deepen understanding of the usage of automated script to grasp the importance of log analysis.

## Skills Learned
- Understanding the working process behind basic log tools
- Interpreting analyzed logs
- Ability to use bash scripting to automate certain tasks on the system
- Threat Detection
- Real Time monitoring
## How it works
 How It Works
The script parses `/var/log/auth.log` and:
- Counts failed login attempts
- Identifies successful logins
- Detects new user creation
- Tracks sudo usage
- Gives an output of the report

