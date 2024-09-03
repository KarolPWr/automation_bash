#!/bin/bash



# if systemctl status nginx 1>/dev/null 2>&1; then
#     echo "Nginx wstał, kontynnuj..."
#     exit 0
# else 
#     echo "Nginx nie wstał"
#     echo "startowanie programu..."
#     systemctl start nginx

#     echo "Czekam 30 aż nginx wstanie..."
#     sleep 30 


for _ in $(seq 20)
do 
echo "Czekam 30 sekund na NGINX..."
sleep 1
if  systemctl status nginx 1>/dev/null 2>&1; then
    echo "nginx uruchomiony"
    exit 0
else 
    echo "nginx dalej nie działa"
fi
done


exit 7

