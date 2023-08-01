#!/bin/bash

#~~~~~~~~~~~~~~~~~~~~~~~~~
# Coder : Abijith @ NNC 
# Teacher : Suman @ BHUTUU
#~~~~~~~~~~~~~~~~~~~~~~~~~

#-----------argument for about me----------------
ab=$1

if [[ $ab == '-aboutme' ]]; then
echo
echo -e "
            -------------------------------------------------------
	    		     ᴘᴇʀꜱᴏɴᴀʟ ᴅᴇᴛᴀɪʟꜱ
	    -------------------------------------------------------
	          Coder          >>       Abijith NNC
	    -------------------------------------------------------
	         Teacher         >>       Suman@BHUTUU
	    -------------------------------------------------------
	        Github           >>   https://github.com/Abij1234
	    -------------------------------------------------------
	       instagram         >>  https://www.instagram.com/_coder_nnc
	    -------------------------------------------------------
	     ====================================================
	    -------------------------------------------------------
	                  ᴀʙᴏᴜᴛ _ʙʟᴜᴇ_ᴇʏᴇ_ɴᴇᴛᴡᴏʀᴋɪɴɢ_
	    -------------------------------------------------------
	       _ʙʟᴜᴇ_ᴇʏᴇ_ɴᴇᴛᴡᴏʀᴋɪɴɢ_ 𝕚𝕤 𝕒 𝕥𝕠𝕠𝕝 𝕞𝕒𝕚𝕟𝕝𝕪 𝕓𝕒𝕤𝕖𝕕  𝕠𝕟 '𝕟𝕞𝕒𝕡'. 
	       𝕎𝕖 𝕔𝕒𝕟 𝕤𝕚𝕞𝕡𝕝𝕪 𝕤𝕔𝕒𝕟 𝕒𝕟𝕪 𝕚𝕡 𝕒𝕕𝕕𝕣𝕖𝕤𝕤 𝕦𝕤𝕚𝕟𝕘 𝕥𝕙𝕚𝕤 𝕥𝕠𝕠𝕝. 
	       ℂ𝕦𝕣𝕣𝕖𝕟𝕥 𝕧𝕖𝕣𝕤𝕚𝕠𝕟 𝕚𝕤 𝟙. 𝔸𝕗𝕥𝕖𝕣 𝕟𝕖𝕩𝕥 𝕧𝕖𝕣𝕤𝕚𝕠𝕟 𝕦𝕡𝕕𝕒𝕥𝕖 𝕞𝕒𝕟𝕪 
	       𝕦𝕤𝕖𝕗𝕦𝕝𝕝 𝕤𝕔𝕒𝕟𝕤 𝕒𝕟𝕕 𝕠𝕥𝕙𝕖𝕣 𝕥𝕙𝕚𝕟𝕘𝕤 𝕨𝕚𝕝𝕝 𝕓𝕖 𝕒𝕕𝕕𝕖𝕕. 
	       𝕋𝕙𝕒𝕟𝕜 𝕪𝕠𝕦 𝕗𝕠𝕣 𝕦𝕤𝕚𝕟𝕘 _ʙʟᴜᴇ_ᴇʏᴇ_ɴᴇᴛᴡᴏʀᴋɪɴɢ_
	    -------------------------------------------------------" | pv -qL 200 | lolcat
exit 1	    
fi
#-----------Colour codes----------

S0="\033[1;30m" B0="\033[1;40m"
S1="\033[1;31m" B1="\033[1;41m"
S2="\033[1;32m" B2="\033[1;42m"
S3="\033[1;33m" B3="\033[1;43m"
S4="\033[1;34m" B4="\033[1;44m"
S5="\033[1;35m" B5="\033[1;45m"
S6="\033[1;36m" B6="\033[1;46m"
S7="\033[1;37m" B7="\033[1;47m"
R0="\033[00m"   R1="\033[1;00m"

#--------------------------------

#-----------print version-----------

ver=$1

if [[ $ver == '--version' ]]; then
echo
printf "Version : 2.0\n"
fi
exit

#--------------sudousr code---------------

v2=$1

if [[ $v2 == '-sudousr' ]]; then
	if [ $(id -u) = 0 ]; then
   		echo "${S4}Welcome to SUDOUSR mode...${R0}\n"
 	else 
   		printf "${S1}User is not ROOT! These mode required ROOT ascess${R0}\n"
		exit 1
	fi

	echo
	printf "${S1}WARNING: ${R0}These is only for sudo or root users${R0}\n"
	echo
	while true; do
		printf "${S1}𝔹𝕝𝕦𝕖_𝔼𝕐𝔼_ℕ𝔼𝕋𝕎𝕆ℝ𝕂𝕀ℕ𝔾${S4}(sudousr)${R0}>>> ${R0}"
		read sudocommand

		if [[ $sudocommand == '-commands' ]]; then
			echo
			echo -e "
           --------------------------------------------------------------
                               ＨＥＬＰ ＭＥＮＵ
           --------------------------------------------------------------
            (1) -commands            |      For help menu

            (2) -sudo_BEN_multiport  |   For scanning multiple ports

	    (3) -sudo_BEN_tcp        |   For scanning weather TCP is open
                                        
	    (4) -sudo_BEN_stealth    |   For stealthy scanning
										
            (5) -sudo_BEN_decoy_stel |   scan using multiple decoy IP addresses
                                        
            (6) -sudo_BEN-A          |   Enable OS detection,version
					 detection,script scanning,and traceroute
           --------------------------------------------------" | pv -qL 300 | lolcat
		elif [[ $sudocommand == '-sudo_BEN_multiport' ]]; then
			echo
			printf "${S4}You selected Scanning multiple ports${R0}\n"
			echo
			printf "${S4}ENTER THE IP ADDRESS OR DOMAIN NAME OF TARGET SITE==> ${R0}"
			read it
			printf "${S6}Scanning started! [please wait it take time] ${R0}\n"
			echo
			sudo nmap -sP $it

		elif [[ $sudocommand == '-sudo_BEN_tcp' ]]; then
			echo
			printf "${S4}You selected for scanning weather TCP is open${R0}\n"
			echo
			printf "${S4}ENTER THE IP ADDRESS OR DOMAIN NAME OF TARGET SITE==> ${R0}"
			read it
			printf "${S6}Scanning started! [please wait it take time] ${R0}\n"
			echo
			sudo nmap -sT $it

		elif [[ $sudocommand == '-sudo_BEN_stealth' ]]; then
			echo
			printf "${S4}You selected for stealthy scanning${R0}\n"
			echo
			printf "${S4}ENTER THE IP ADDRESS OR DOMAIN NAME OF TARGET SITE==> ${R0}"
                        read it
			printf "${S6}Scanning started! [please wait it take time] ${R0}\n"
			echo
			sudo nmap -sS $it

		elif [[ $sudocommand == '-sudo_BEN_decoy_stel' ]]; then
			echo
			printf "${S4}You selected for Decoy Stealthy scanning${R0}\n"
			echo
			printf "${S4}ENTER THE DECOY IP ADDRESS OR DOMAIN NAME OF TARGET SITE==> ${R0}"
			read dec
			printf "${S4}ENTER THE IP ADDRESS OR DOMAIN NAME OF TARGET SITE==> ${R0}"
			read it
			echo
			printf "${S6}Scanning started! [please wait it take time] ${R0}\n"
			echo
			sudo nmap -D $dec -sS $it

		elif [[ $sudocommand == '-sudo_BEN-A' ]]; then
			echo
			printf "${S4}You selected for Enable OS detection,versiondetection,script scanning,and traceroute${R0}\n"
			echo
			printf "${S4}ENTER THE IP ADDRESS OR DOMAIN NAME OF TARGET SITE==> ${R0}"
      			read it
			printf "${S6}Scanning started! [please wait it take time] ${R0}\n"
			echo
			sudo nmap -A $it
		elif [[ $sudocommand == 'clear' ]]; then
			clear
		else
			printf "${S1}[!] ERROR [!] Please use -commands for help menu ${R0}\n"
		fi
	done
fi





#---------------Check internet connection-----------

ping -c 1 google.com >/dev/null 2>&1
if [ $? == '0' ]; then
printf "${S4}INTERNET CONNECTED ${R0}\n"
else
printf "${S4}INTERNET CONNECTION FAILD! TRY AGAIN... ${R0}\n"
exit 1
fi

#------------Downloard requirments-----------

printf "${S4}Welcome to _BLUE_EYE_NETWORKING_ ${R0}\n"

pack=(nmap dnsutils sox)
for i in "${pack[@]}"; do
if ! hash $i; then
printf "${S1}BASIC REQUIRMENTS NOT FOUNDED! SO INSTALLING.... ${R0}\n"
pkg install $i -y
else
echo
printf "${S4}Loding......... ${R0}\n"
sleep 2
clear
fi
done

#-----------------Sound effects------------------

error(){
play /data/data/com.termux/files/home/_BLUE_EYE_NETWORKING_/sounds/mixkit-wrong-electricity-buzz-955.wav > /dev/null 2>&1
}

Do_on_signal_SIGINT(){
play /data/data/com.termux/files/home/_BLUE_EYE_NETWORKING_/sounds/'Xp Shutdown.mp3' > /dev/null 2>&1
printf "${B1}⚠️ PROGRAMME EXITED BY USER ⚠️ ${R1}\n"
exit 1
}
trap Do_on_signal_SIGINT SIGINT

#-------------------Banner work------------------

echo -e "
	        
                ╭━━╮╭╮╱╱╭╮╱╭┳━━━╮╭━━━┳╮╱╱╭┳━━━╮
                ┃╭╮┃┃┃╱╱┃┃╱┃┃╭━━╯┃╭━━┫╰╮╭╯┃╭━━╯
                ┃╰╯╰┫┃╱╱┃┃╱┃┃╰━━╮┃╰━━╋╮╰╯╭┫╰━━╮
                ┃╭━╮┃┃╱╭┫┃╱┃┃╭━━╯┃╭━━╯╰╮╭╯┃╭━━╯
                ┃╰━╯┃╰━╯┃╰━╯┃╰━━╮┃╰━━╮╱┃┃╱┃╰━━╮
                ╰━━━┻━━━┻━━━┻━━━╯╰━━━╯╱╰╯╱╰━━━╯
	
         ╭━╮╱╭┳━━━┳━━━━┳╮╭╮╭┳━━━┳━━━┳╮╭━┳━━┳━╮╱╭┳━━━╮
         ┃┃╰╮┃┃╭━━┫╭╮╭╮┃┃┃┃┃┃╭━╮┃╭━╮┃┃┃╭┻┫┣┫┃╰╮┃┃╭━╮┃
         ┃╭╮╰╯┃╰━━╋╯┃┃╰┫┃┃┃┃┃┃╱┃┃╰━╯┃╰╯╯╱┃┃┃╭╮╰╯┃┃╱╰╯
         ┃┃╰╮┃┃╭━━╯╱┃┃╱┃╰╯╰╯┃┃╱┃┃╭╮╭┫╭╮┃╱┃┃┃┃╰╮┃┃┃╭━╮
         ┃┃╱┃┃┃╰━━╮╱┃┃╱╰╮╭╮╭┫╰━╯┃┃┃╰┫┃┃╰┳┫┣┫┃╱┃┃┃╰┻━┃
         ╰╯╱╰━┻━━━╯╱╰╯╱╱╰╯╰╯╰━━━┻╯╰━┻╯╰━┻━━┻╯╱╰━┻━━━╯

                        Ｖｅｒｓｉｏｎ 2
 
	       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	       	      ᴄᴏᴅᴇʀ : ɴɴᴄ@ᴀʙɪᴊɪᴛʜ
		     ᴛᴇᴀᴄʜᴇᴅ : ꜱᴜᴍᴀɴ@ʙʜᴜᴛᴜᴜ
	       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" | pv -qL 200 | lolcat
echo

#----------------Programme-----------------

while true; do
printf "${S6}WOULD YOU WANT TO GET THE IP ADDRESS OF TARGET WEBSITE[y/n]==> ${R0}"
read choice

if [[ $choice == 'y' || $choice == 'Y' ]]; then
echo
printf "${S6}Enter your target website domain name==> ${R0}"
read domain
clear
printf "${S4}PLEASE WAIT.... ${R0}\n"
echo
printf "\033[?25l"

printf "10%%•••         \r"
sleep 1
printf "20%%••••        \r"
sleep 1
printf "30%%•••••       \r"
sleep 1
printf "40%%••••••      \r"
sleep 1
printf "50%%•••••••     \r"
sleep 1
printf "60%%••••••••    \r"
sleep 1
printf "70%%•••••••••   \r"
sleep 1
printf "80%%••••••••••  \r"
sleep 1
printf "90%%••••••••••• \r"
sleep 1
printf "100%%•••••••••••\n"

printf "\033[?25h"
echo
nslookup $domain > /dev/null 2>&1
if [ $? == '0' ]; then
printf "${S4}YOU IP ADDRESS OF WEBSITE IS :- ${R0}\n"
nslookup $domain
break
else
printf "${S1}DOMAIN NAME NOT FOUNDED TRY AGAIN ${R0}\n"
fi
elif [[ $choice == 'n' || $choice == 'N' ]]; then
echo
printf "${S4}.............................. ${R0}\n"
break
fi
done
echo
printf "${S4}Press enter to start Scanning Machine.${S1}Use only for educational purposes ${R0}\n"
read

mainone(){
while true; do
printf "${S1}𝔹𝕝𝕦𝕖_𝔼𝕐𝔼_ℕ𝔼𝕋𝕎𝕆ℝ𝕂𝕀ℕ𝔾>>> ${R0}"
read that

if [[ $that == '-commands' || $that == '-help' ]]; then
echo
echo -e "
           -----------------------------------------------
	                 ＨＥＬＰ ＭＥＮＵ           
	   -----------------------------------------------
	    (1) -commands        |      For help menu

	    (2) -BEN_normal      |      for normal scanning

	    (3) -BEN_ser_ver     |      for service and version
	    				scanning

	    (4) -BEN_open        |      Only for finding open
	    				ports

	    (5) -BEN_multiple    |      For scanning multiple
	    				ip address

	    (6) -BEN_subnet      |      For scanning subnets
           --------------------------------------------------" | pv -qL 300 | lolcat

elif [[ $that == '-BEN_normal' ]]; then
echo
printf "${S6}You selected normal scanning ${R0}\n"
echo
printf "${S4}ENTER THE IP ADDRESS OR DOMAIN NAME OF TARGET SITE==> ${R0}"
read name
printf "${S6}Scanning started! [please wait it take time] ${R0}\n"
echo
nmap $name

elif [[ $that == '-BEN_ser_ver' ]]; then
echo
printf "${S6}You selected Service and Version scan ${R0}\n"
echo
printf "${S4}ENTER THE IP ADDRESS OR DOMAIN NAME OF TARGET SITE==> ${R0}"
read name
printf "${S6}Scanning started! [please wait it take time] ${R0}\n"
echo
nmap -sV $name

elif [[ $that == '-BEN_open' ]]; then
echo
printf "${S6}You selected to scan open ports only ${R0}\n"
echo
printf "${S4}ENTER THE IP ADDRESS OR DOMAIN NAME OF TARGET SITE==> ${R0}"
read name
printf "${S6}Scanning started! [please wait it take time] ${R0}\n"
echo
nmap -open $name

elif [[ $that == '-BEN_multiple' ]]; then
echo
printf "${S6}You selected multiple ip address scanning ${R0}\n"
echo
printf "${S4}Enter 1st ip address or subnet==> ${R0}"
read ip1
printf "${S4}Enter 2nd ip address or subnet==> ${R0}"
read ip2
printf "${S6}Scanning started! [please wait it take time] ${R0}\n"
echo
nmap $ip1 $ip2

elif [[ $that == '-BEN_subnet' ]]; then
echo
printf "${S6}You selected subnet scanning ${R0}\n"
echo
printf "${S4}ENTER THE IP ADDRESS OF TARGET SITE==> ${R0}"
read name
mainname=${name%$(echo ${name//./ } | awk '{print $NF}')}0
nmap -sP $name/24

else
error
printf "${S1}[!] ERROR [!] Please use -commands for help menu ${R0}\n"
fi
done
}
mainone
