Script: .aptgetall.sh
# Author: My Name  
# Date: yyyymmdd - ee   (ee = times edited)
# 
# Purpose: run update scripts from ~/scripts/sysupdates
# 
# Notes:
# 

for SCRIPT in `ls ~/.dmconf.sh`; do ${SCRIPT}; done
