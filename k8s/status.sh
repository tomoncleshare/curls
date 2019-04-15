#! /bin/bash
# tomoncle
# check kubernetes service status.

echo "service name               | status"
echo "-----------------------------------"
if [ $(systemctl status kube-apiserver | grep "Active: active (running)" | wc -l) -gt 0 ]
then
    echo -e "kube-apiserver             | \033[32mactive\033[0m"
else
    echo -e "kube-apiserver             | \033[31mdead\033[0m"
fi
if [ $(systemctl status kube-controller-manager | grep "Active: active (running)" | wc -l) -gt 0 ]
then
    echo -e "kube-controller-manager    | \033[32mactive\033[0m"
else
    echo -e "kube-controller-manager    | \033[31mdead\033[0m"
fi
if [ $(systemctl status kube-scheduler | grep "Active: active (running)" | wc -l) -gt 0 ]
then
    echo -e "kube-scheduler             | \033[32mactive\033[0m"
else
    echo -e "kube-scheduler             | \033[31mdead\033[0m"
fi
if [ $(systemctl status kubelet | grep "Active: active (running)" | wc -l) -gt 0 ]
then
    echo -e "kubelet                    | \033[32mactive\033[0m"
else
    echo -e "kubelet                    | \033[31mdead\033[0m"
fi
if [ $(systemctl status kube-proxy | grep "Active: active (running)" | wc -l) -gt 0 ]
then
    echo -e "kube-proxy                 | \033[32mactive\033[0m"
else
    echo -e "kube-proxy                 | \033[31mdead\033[0m"
fi
echo 
