#!/bin/bash
# key gen for empty begining. change RSA to OTHER if needed.
if [[ ! -f "/root/.ssh/id_rsa.pub" ]]; then
    /usr/bin/ssh-keygen -q -t rsa -b 4096 -N '' -f /root/.ssh/id_rsa <<<y
    exit 0
fi

/sbin/my_init &
chmod 600 /root/.ssh/id_rsa
pwsh /root/scoop/lib/install.ps1
bash -x /root/excavate.sh
