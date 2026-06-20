```bash
#!/bin/bash

# ==========================================
# Log Analyzer Script
# Author: Sudikshya
# Purpose:
# Analyze Linux logs to find:
# 1. Failed login attempts
# 2. Number of error messages
# 3. Most common errors
# ==========================================

echo "===== LOG ANALYZER ====="

# Blank line for better readability
echo

# ------------------------------------------
# Failed Login Attempts
# grep searches for the text "Failed password"
# wc -l counts how many matching lines exist
# ------------------------------------------
echo "Failed Login Attempts:"
grep "Failed password" /var/log/auth.log | wc -l

echo

# ------------------------------------------
# Error Message Count
# grep -i searches for the word "error"
# -i means ignore uppercase/lowercase
# wc -l counts the number of matching lines
# ------------------------------------------
echo "Error Messages:"
grep -i "error" /var/log/syslog | wc -l

echo

# ------------------------------------------
# Top Error Messages
#
# grep      -> finds lines containing "error"
# sort      -> groups identical lines together
# uniq -c   -> counts duplicate lines
# sort -nr  -> sorts by count (highest first)
# head      -> shows only the top results
# ------------------------------------------
echo "Most Common Errors:"
grep -i "error" /var/log/syslog | sort | uniq -c | sort -nr | head

echo

# ------------------------------------------
# Script Finished
# ------------------------------------------
echo "Log analysis completed."
```
