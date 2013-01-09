while :
do
clear
echo "--------------------------------------------"
echo " * * * * * * * Main Menu * * * * * * * * * * "
echo "--------------------------------------------"
echo "[1] Change Password"
echo "[2] Viewing Disk Space"
echo "[3] Login to Other box"
echo "[4] View Running Services"
echo "[5] Show Opened Ports"
echo "[6] Show all Java Applications running"
echo "[7] To Kill Application"
echo "[8] Exit"
echo "--------------------------------------------"
echo " * * * * * BY SARAVANAN 8197526543 * * * * *"
echo "--------------------------------------------"
echo -n "Enter your menu choice [1-8]:"

read yourch
case $yourch in
1)passwd ; echo " Press a key. . ." ; read ;;
2) echo "Disk space is" ; df -h; echo "Press a key. . ." ; read ;;
3)echo " Enter the IP Address: " ; read ipa ;
ssh $ipa ; clear;
read ;;
4) chkconfig --list ; echo " Press a key. . ." ; read ;;
5) lsof -i -n -P; echo " Press a key. . ."; read ;;
6) pgrep java;echo  " Press a key. . ." ; read ;;
7) echo " Enter the Application name to be killed : " ; read apname ;
pkill $apname;
if [ $# -eq 0 ]
then
echo " Application killed Successfully" ;
else
echo " Application not found" ;
fi
read;;
8) exit 0;
esac
done
