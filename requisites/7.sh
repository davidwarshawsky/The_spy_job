#!/bin/bash

user=$(cat requisites/configuracion/.user_not_root.txt)

source requisites/0.sh

Title
echo "[7] Public IP Information"
echo
echo "=========================================================="
echo "[1] Check the Internet Service Provider (ISP) of the IP""       |"
echo "----------------------------------------------------------"
echo "[2] Geolocation of the exact city of the IP""         |"
echo "----------------------------------------------------------"
echo "[3] Search for open ports and their services ""         |"
echo "----------------------------------------------------------"
echo "[4] Check the status of an IP (Check if it is down) ""   |"
echo "----------------------------------------------------------"
echo "[5] All (ISP, Geolocation, Ports, Status)""    |"
echo "----------------------------------------------------------"
echo "[6] Go back to the Menu""                                       |"
echo "=========================================================="
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "Enter the Public IP of the Target: " ip
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "[*] Internet Service Provider: " $(curl -s "http://ip-api.com/line/$ip?fields=isp")
				;;
			2 )	echo
				read -p "Enter the Public IP of the Target: " ip
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "[*] Continent: " $(curl -s "http://ip-api.com/line/$ip?fields=continent")
				echo
				echo "[*] Country: " $(curl -s "http://ip-api.com/line/$ip?fields=country")
				echo
				echo "[*] City: " $(curl -s "http://ip-api.com/line/$ip?fields=city")
				echo
				echo "I recommend comparing the obtained data with the ones from https://nordvpn.com/pt-br/ip-lookup"
				echo "as they have the most reliable and accurate data about a Public IP"
				;;
			3 )	echo
				read -p "Enter the Public IP of the Target: " ip
				read -p "Scan the top 1000 most used ports (y) or all 65535 ports (n)? (y/n): " opc2
				echo
					if [ $opc2 = y ]
						then
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1st Scan using Naabu (No API): "
							echo "_________________________________"
							echo
							sudo naabu -host $ip -silent -json
							echo
							echo "2nd Scan using Shodan (API): "
							echo "_______________________________"
							echo
							sudo shodan host $ip
							echo
							echo "3rd Scan using ZoomEye (API): "
							echo "___________________________________________"
							echo
							sudo zoomeye ip $ip
							echo
							echo "4th Scan using Shodan Web (No API): "
							echo "______________________________________"
							echo
							echo "Opening Browser...."
							sleep 2
							open -a "Firefox 'https://www.shodan.io/host/$ip'"
							echo
							echo
							echo "/\/\/\/\/\ In case of using a VPN, the 1st option may give incorrect ports /\/\/\/\/"
						else
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1st Scan using Nmap /65535 ports\ (No API): "
							echo "________________________________________________"
							sudo nmap -sV -O -p "*" $ip
							echo
							echo "2nd Scan using Naabu (No API): "
							echo "_________________________________"
							echo
							sudo naabu -host $ip -silent -json
							echo
							echo "3rd Scan using Shodan (API): "
user=`cat requisites/configuracion/.user_not_root.txt`

source requisites/0.sh

Title
echo "[7] Public IP Information"
echo
echo "=========================================================="
echo "[1] Check the Internet Service Provider (ISP) of the IP""       |"
echo "----------------------------------------------------------"
echo "[2] Geolocation of the exact city of the IP""         |"
echo "----------------------------------------------------------"
echo "[3] Search for open ports and their services ""         |"
echo "----------------------------------------------------------"
echo "[4] Check the status of an IP (Check if it is down) ""   |"
echo "----------------------------------------------------------"
echo "[5] All (ISP, Geolocation, Ports, Status)""    |"
echo "----------------------------------------------------------"
echo "[6] Go back to the Menu""                                       |"
echo "=========================================================="
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "Enter the Public IP of the Target: " ip
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "[*] Internet Service Provider: " `curl -s "http://ip-api.com/line/$ip?fields=isp"`
				;;
			2 )	echo
				read -p "Enter the Public IP of the Target: " ip
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "[*] Continent: " `curl -s "http://ip-api.com/line/$ip?fields=continent"`
				echo
				echo "[*] Country: " `curl -s "http://ip-api.com/line/$ip?fields=country"`
				echo
				echo "[*] City: " `curl -s "http://ip-api.com/line/$ip?fields=city"`
				echo
				echo "I recommend comparing the obtained data with the ones from https://nordvpn.com/pt-br/ip-lookup"
				echo "as they have the most reliable and accurate data about a Public IP"
				;;
			3 )	echo
				read -p "Enter the Public IP of the Target: " ip
				read -p "Scan the top 1000 most used ports (y) or all 65535 ports (n)? (y/n): " opc2
				echo
					if [ $opc2 = y ]
						then
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1st Scan using Naabu (No API): "
							echo "_________________________________"
							echo
							sudo naabu -host $ip -silent -json
							echo
							echo "2nd Scan using Shodan (API): "
							echo "_______________________________"
							echo
							sudo shodan host $ip
							echo
							echo "___________________________________________"
							echo
							sudo zoomeye ip $ip
							echo
							echo "4th Scan using Shodan Web (No API): "
							echo "______________________________________"
							echo
							echo "Opening Browser...."
							sleep 2
							open -a "Firefox 'https://www.shodan.io/host/$ip'"
							echo
							echo
							echo "/\/\/\/\/\ In case of using a VPN, it is likely that the 1st option will have incorrect ports /\/\/\/\/"
							else
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1st Scan using Nmap /65535 ports\ (No API): "
							echo "________________________________________________"
							sudo nmap -sV -O -p "*" $ip
							echo
							echo "2nd Scan using Naabu (No API): "
							echo "___________________________________________"
							echo
							sudo zoomeye ip $ip
							echo
							echo "4th Scan using Shodan Web (No API): "
							echo "______________________________________"
							echo
							echo "Opening Browser...."
							sleep 2
							open -a "Firefox 'https://www.shodan.io/host/$ip'"
							echo
							echo
								echo "/\/\/\/\/\ In case of using a VPN, it is likely that the 1st option will have incorrect ports /\/\/\/\/"
							else
								echo
								echo "########################"
								echo "[☢] IP: $ip"
								echo "########################"
								echo
								echo "1st Scan using Nmap /65535 ports\ (No API): "
								echo "________________________________________________"
								sudo nmap -sV -O -p "*" $ip
								echo
								echo "2nd Scan using Naabu (No API): "
								echo "_________________________________"
								echo
								sudo naabu -host $ip -silent -json
								echo
								echo "3rd Scan using Shodan (API): "
								echo "_______________________________"
								echo
								sudo shodan host $ip
								echo
								echo "4th Scan using ZoomEye (API): "
								echo "___________________________________________"
								echo
								sudo zoomeye ip $ip
								echo
								echo "5th Scan using Shodan Web (No API): "
							echo "______________________________________"
							echo
											echo "Opening Browser...."
											sleep 2
											open -a "Firefox 'https://www.shodan.io/host/$ip'"
											echo
											echo
											echo "/\/\/\/\/\ In case of using a VPN, it is likely that the 1st and 2nd options will have incorrect ports /\/\/\/\/"
									fi
								;;
							4 )	echo
								read -p "Enter the Public IP of the Target: " ip
								echo
								echo "########################"
								echo "[☢] IP: $ip"
								echo "########################"
								echo
								echo "Opening Browser...."
								sleep 2
								open -a "Firefox 'https://check-host.net/check-ping?host=$ip'"
								;;
							5 )	Title
								echo "[7] Public IP Information"
								echo
								read -p "Enter the Public IP of the Target: " ip
								read -p "Scan the top 1000 most used ports (y) or all 65535 ports (n)? (y/n): " opc2
								echo
								echo
								echo "⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Public IP Information (Geolocation, Internet Company, Timezone, Proxy) (x_x)⇩⇩ Company of⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
								echo
								echo "########################"
								echo "[☢] IP: $ip"
								echo "########################"
								echo
								echo "[*] Internet Company: " `curl -s "http://ip-api.com/line/$ip?fields=isp"`
								echo
								echo "[*] Continent: " `curl -s "http://ip-api.com/line/$ip?fields=continent"`
				echo
				echo "[*] Country: " `curl -s "http://ip-api.com/line/$ip?fields=country"`
				echo
				echo "[*] City: " `curl -s "http://ip-api.com/line/$ip?fields=city"`
				echo
				echo "[*] Timezone: " `curl -s "http://ip-api.com/line/$ip?fields=timezone"`
				echo
				echo "[*] Proxy: " `curl -s "http://ip-api.com/line/$ip?fields=proxy"`
				echo
				echo "I recommend comparing the obtained data with those from https://nordvpn.com/pt-br/ip-lookup"
				echo "as they have the most reliable and accurate data about a Public IP"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Listing open ports and their services (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
					if [ $opc2 = y ]
						then
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1st Scan using Naabu (No API): "
							echo "_________________________________"
							echo
							sudo naabu -host $ip -silent -json
							echo
							echo "2nd Scan using Shodan (API): "
							echo "_______________________________"
							echo
							sudo shodan host $ip
							echo
							echo "3rd Scan of Ports using ZoomEye (API): "
							echo "___________________________________________"
							echo
							sudo zoomeye ip $ip
							echo
							echo "4th Scan using Shodan Web (No API): "
							echo "______________________________________"
							echo
							echo "Opening Browser (After the processes are finished)...."
							#open -a "Firefox 'https://www.shodan.io/host/$ip'"
							echo
							echo
							echo "/\/\/\/\/\ In case of using a VPN, it is likely that the 1st option will have incorrect ports /\/\/\/\/"
						else
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1st Scan using Nmap /65535 ports\ (No API): "
							echo "________________________________________________"
							sudo nmap -sV -O -p "*" $ip
							echo
							echo "2nd Scan using Naabu (No API): "
							echo "_________________________________"
							echo
							sudo naabu -host $ip -silent -json
							echo
							echo "3rd Scan using Shodan (API): "
							echo "_______________________________"
							echo
							sudo shodan host $ip
							echo
							echo "4th Scan of Ports using ZoomEye (API): "
							echo "___________________________________________"
							echo
							sudo zoomeye ip $ip
							echo
							echo "5th Scan using Shodan Web (No API): "
							echo "______________________________________"
							echo
							echo "Opening Browser (When the processes are finished)...."
							#open -a "Firefox 'https://www.shodan.io/host/$ip'"
							echo
							echo
							echo "/\/\/\/\/\ In case of using a VPN, it is likely that the 1st and 2nd options will give incorrect ports /\/\/\/\/"
					fi
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Check the Status of an IP (See if it is down) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "Opening Browser and All Tabs...."
				sleep 2
				open -a "Firefox 'https://www.shodan.io/host/$ip'" | open -a "Firefox 'https://check-host.net/check-ping?host=$ip'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			6 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY is not a valid option"
				sleep 1
				bash requisites/7.sh
	esac
echo
echo
echo "#####################"
echo "[1] Go back to Menu"
echo "[2] Run again"
echo "[3] Exit"
echo "#####################"
echo
read -p "Choose an option: " opc3
	case $opc3 in
			1 )	bash the_spy_job.sh
				;;
			2 )	bash requisites/7.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY is not a valid option"
	esac
