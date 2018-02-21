# check some system items when using Live USB
echo "1 Check CPU "
echo "2 Check memory usage "
echo "Select 1 or 2" 
read option
#echo 'You selected option : ' $option

case "$option" in
1) echo "Memory usage is :" && df -h | grep aufs | awk '{print $5}';; 
2) echo "CPU is currently used by :" && ps aux | awk '$3+$4> 5' | awk '{print $11 "  " $3+$4}';;
*) echo "Try 1 or 2 "
esac

