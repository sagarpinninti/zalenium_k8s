#!/bin/bash
sudo kubeadm init > /home/admin/k.out
token=`tail k.out |grep -i kubeadm`
S=sudo
b='#!/bin/bash'
c=`echo $S $token`
d=$b'\n'$c
echo -e $d > join.sh
chmod -R 777 join.sh
