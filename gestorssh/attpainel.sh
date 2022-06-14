#!/bin/bash
clear
echo "America/Sao_Paulo" > /etc/timezone
ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime > /dev/null 2>&1
dpkg-reconfigure --frontend noninteractive tzdata > /dev/null 2>&1
clear
update_start() {
rm /bin/pweb > /dev/null 2>&1
cd /bin || exit
wget https://github.com/didodr/plusnssh/raw/main/gestorssh/pweb > /dev/null 2>&1
chmod 777 pweb > /dev/null 2>&1
clear
[[ ! -d /bin/ppweb ]] && mkdir /bin/ppweb
cd /bin/ppweb || exit
rm *.sh versao* > /dev/null 2>&1
wget https://github.com/didodr/plusnssh/raw/main/gestorssh/install.sh > /dev/null 2>&1
wget https://github.com/didodr/plusnssh/raw/main/gestorssh/ubuinst.sh > /dev/null 2>&1
wget https://github.com/didodr/plusnssh/raw/main/gestorssh/senharoot.sh > /dev/null 2>&1
wget https://github.com/didodr/plusnssh/raw/main/gestorssh/restbanco.sh > /dev/null 2>&1
wget https://github.com/didodr/plusnssh/raw/main/gestorssh/restbanco18.sh > /dev/null 2>&1
wget https://github.com/didodr/plusnssh/raw/main/gestorssh/empresa.sh > /dev/null 2>&1
wget https://github.com/didodr/plusnssh/raw/main/gestorssh/updatepainel.sh > /dev/null 2>&1
wget https://github.com/didodr/plusnssh/raw/main/gestorssh/updatepainel18.sh > /dev/null 2>&1
wget https://github.com/didodr/plusnssh/raw/main/gestorssh/updatepainelarm.sh > /dev/null 2>&1
wget https://github.com/didodr/plusnssh/raw/main/gestorssh/updatepainelarm18.sh > /dev/null 2>&1
wget https://github.com/didodr/plusnssh/raw/main/gestorssh/versao > /dev/null 2>&1
chmod 777 *.sh > /dev/null 2>&1
cat /dev/null > ~/.bash_history && history -c
}
update_start