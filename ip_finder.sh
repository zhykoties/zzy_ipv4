touch current_ipv4.txt
ip route get 1.2.3.4 | awk '{print $7}' 2>&1 | tee current_ipv4.txt
git add .
git commit -m 'new ipv4'
git push -u origin main
