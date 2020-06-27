#!/bin/bash
# SCRIPT:
# REV: Version 1.0
# PLATFORM: Kali Linuc 
# AUTHOR: Coenraad
#
# PURPOSE: Install Hellbox - Pentest Kit 
#
##########################################################
########### DEFINE FILES AND VARIABLES HERE ##############
##########################################################
# Run as root.
if [[ $EUID -ne 0 ]]; then
    echo -e "\e[1mMust be ROOT to run  this script!\e[0m"
    echo -e "\e[1mMust be ROOT to run  this script!\e[0m"
    echo -e "\e[1mMust be ROOT to run  this script!\e[0m"
    exit 1
fi


function pause(){
 read -s -n 1 -p "Press any key to continue . . . or Ctrl+C to exit"
 echo ""
}
 
clear

##########################################################
################ BEGINNING OF MAIN #######################
##########################################################
    echo 
    for i in {16..21} {21..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo  
    echo -e "\e[40;38;5;82m ---- \e[30;48;5;82m ---------- \e[0m"
    echo -e "\e[40;38;5;82m Kali \e[30;48;5;82m HellBOX V1 \e[0m"
    echo -e "\e[40;38;5;82m ---- \e[30;48;5;82m ---------- \e[0m"
    for i in {16..21} {21..16} ; do echo -en "\e[48;5;${i}m \e[0m" ; done ; echo  
    echo 
    echo 
    echo -e "Hey  \e[5m Are all the Prereqs installed? \e[0m"
    echo 
    echo -e "Also:  \e[5m Grab a coffee and watch a episode of anything this install takes time.. \e[0m"
    echo 
    pause 
    echo 
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing Need Repo's and software!!! This will take TIME..  \e[0m"
    echo
    echo "Installing system"
    echo
apt update
apt install -y tor git terminator python3 python3-pip  zlib1g-dev libxml2-dev libxslt1-dev tilix vim fish snapd 
systemctl enable --now snapd apparmor
pip3 install -r requirements.txt
pause

#katoolin 
clear  
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing katoolin  \e[0m"
    echo
git clone https://github.com/LionSec/katoolin.git && cp katoolin/katoolin.py /usr/bin/katoolin
chmod +x /usr/bin/katoolin
echo 
pause 
echo 
echo 

#msploitego
clear  
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing msploitego \e[0m"
    echo
git clone https://github.com/shizzz477/msploitego.git
echo 
pause 
echo 
echo 
#amass
clear 
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing amass \e[0m"
    echo
snap install amass
echo 
pause 
echo 
echo 
#python-libmap
clear 
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing Python3-Nmap \e[0m"
    echo
git clone https://github.com/wangoloj/python3-nmap.git
cd python3-nmap
python3 setup.py install 
cd ..
echo 
pause 
echo 
echo 
#python-nessus
clear  
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing Python3-Nessus \e[0m"
    echo
git clone https://github.com/tenable/nessrest.git
cd nessrest 
python3 setup.py install 
cd ..
echo 
pause 
echo 
echo 
#python-nessus
clear  
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing Python3-Nessus \e[0m"
    echo
git clone https://github.com/tenable/nessrest.git
cd nessrest 
python3 setup.py install 
cd ..
echo 
pause 
echo 
echo 
#Autosploit
clear 
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing Autosploit \e[0m"
    echo
git clone https://github.com/NullArray/AutoSploit
cd AutoSploit
chmod +x install.sh
./install.sh
cd ..
echo 
pause 
echo 
echo 
#SploitKit
clear 
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing python-sploitkit \e[0m"
    echo
git clone https://github.com/dhondta/python-sploitkit.git
cd python-sploitkit
python3 setup.py install
cd ..
echo 
pause 
echo 
echo 
#KITT 
clear 
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing KITT  \e[0m"
    echo
git clone https://github.com/Cisc0-gif/KITT.git
cd KITT 
./KITT_INSTALLER.sh
cd ..
echo 
pause 
echo 
echo 
#shellver
clear 
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing shellver  \e[0m"
    echo
git clone https://github.com/0xR0/shellver.git 
cd shellver
python setup.py -i
cd ..
echo 
pause 
echo 
echo 
#MetasploitScanner
clear 
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing MetasploitScanner  \e[0m"
    echo
git clone https://github.com/sh4rknado/MetasploitScanner.git
echo 
pause 
echo 
echo 
#Venom
clear  
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing Venom  \e[0m"
    echo
git clone https://github.com/r00t-3xp10it/venom.git
echo 
pause 
echo 
echo
#CyberChef 
clear  
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing CyberChef  \e[0m"
    echo
git clone https://github.com/gchq/CyberChef.git
echo 
pause 
echo 
echo 
#gophish
clear  
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing gophish \e[0m"
    echo
git clone https://github.com/gophish/gophish.git
echo 
pause 
echo 
echo 
#CyberChef 
clear  
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing Rawsec \e[0m"
    echo
git clone https://github.com/noraj/rawsec-cybersecurity-inventory
echo 
pause 
echo 
echo 
#Threadboc
clear 
    echo
    echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m Installing ThreadBox  \e[0m"
    echo
git clone https://github.com/threatexpress/threatbox.git
echo 
echo -e "\e[40;38;5;82m [+] \e[30;48;5;82m  RUN ansible-playbook -e ansible_python_interpreter=/usr/bin/python3 -i hosts threatbox_playbook.yml  -k -K \e[0m"
echo 
cd ..
echo 
sudo echo "operator ALL = (root) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/operator
sudo chmod 0440 /etc/sudoers.d/operator
pause 
echo -e "YOU ARE DONE!!"
echo 
echo 

####################################################
################ END OF MAIN #######################
####################################################
exit 0
# End of script
