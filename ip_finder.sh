touch current_ipv4.txt
ip route get 1.2.3.4 | awk '{print $7}' 2>&1 | tee current_ipv4.txt
curl -X DELETE https://transfer.sh/zzy_ipv4.txt
curl --upload-file ./current_ipv4.txt https://transfer.sh/zzy_ipv4.txt
