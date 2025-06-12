#!/bin/bash

echo "List all user : "
cut -d: -f1 /etc/passwd

echo "Total numbers of user : $(wc -l </etc/passwd)"
