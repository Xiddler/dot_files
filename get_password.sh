#!/bin/bash

# read -p "Enter partial website to find an email : " answer

# grep -i $answer $HOME/common_passwords.txt | awk '{ print $2 " : " $3 " : " $4 " : " $5 }'

# changed from above on 2018-01-21 to make cli command simpler
# e.g.
# gett quo

grep -i $1 $HOME/common_passwords.txt | awk '{ print $2 " : " $3 " : " $4 " : " $5 }'

