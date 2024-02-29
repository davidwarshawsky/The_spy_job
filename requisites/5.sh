#!/bin/bash
user=`cat requisites/configuracion/.user_not_root.txt`

source requisites/0.sh

Title
echo "[5] Email Information"
echo
echo "=========================================================="
echo "[1] Email Information""                              |"
echo "----------------------------------------------------------"
echo "[2] Search for an Email in 121 social networks""|"
echo "----------------------------------------------------------"
echo "[3] Check if it has a GitHub account and get its Username""        |"
echo "----------------------------------------------------------"
echo "[4] Use Google Dorks (Find where the Email has been published)""|"
echo "----------------------------------------------------------"
echo "[5] Verify if the Email exists""                         |"
echo "----------------------------------------------------------"
echo "[6] All (Info, Verify Email, 121 networks, Google Dorks)""|"
echo "----------------------------------------------------------"
echo "[7] Go back to the Menu""                                       |"
echo "=========================================================="
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Enter the Target Email [Gmail, Yahoo, Outlook]: " email
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				sudo curl -s emailrep.io/$email > requisites/resultados/Info-$email.txt
				cat requisites/resultados/Info-$email.txt
				echo
					echo
					echo "If the Option (suspicious: true) appears as (true), it means that we have not observed this email address on the Internet. It is a free provider and does not have profiles on major services like LinkedIn, Facebook, and iCloud. The lack of digital presence can simply indicate a new email address, but it is usually suspicious."
					echo
					echo "/\/\/\/\/\ Next, a website will be opened where we will click on the magnifying glass and fill in the Captcha /\/\/\/\/"
					echo
					echo "Opening Browser...."
					sleep 3
					open -a "Firefox 'https://epieos.com/?q=$email'"
					;;
				2 )	echo
					read -p "[*] Enter the Target Email [Gmail, Yahoo, Outlook]: " email
					echo
					echo "######################################"
					echo "[☢] Email: $email"
					echo "######################################"
					echo
					sudo holehe --only-used --no-clear $email
					;;
				3 )	echo
					read -p "[*] Enter the Target Email [Gmail, Yahoo, Outlook]: " email
					echo
					echo "######################################"
					echo "[☢] Email: $email"
					echo "######################################"
					echo
					sudo python3 requisites/osgint/osgint.py -e $email
					echo
					echo "In case it returns a Username, within Section [4] Social Network Information"
					echo "we have the option [6] Information + email of a GitHub account which will return Account Info"
					;;
			4 )	echo
				read -p "[*] Enter the Target Email [Gmail, Yahoo, Outlook]: " email
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				echo "Opening Browser...."
				sleep 2
				open -a "Firefox 'https://www.google.com/search?q=%22$email%22'"
				;;
			5 )	echo
				echo "Enter the Target Email below: "
				echo
				echo "Opening Browser...."
				sleep 2
				open -a "Firefox 'https://verify-email.org'"
				;;
			6 )	echo
				read -p "[*] Enter the Target Email [Gmail, Yahoo, Outlook]: " email
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Email Information (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				sudo curl -s emailrep.io/$email requisites/resultados/Info-$email.txt
				cat requisites/resultados/Info-$email.txt
				echo
				echo "If the Option (suspicious: true) appears as (true), it means that we have not observed this email address on the Internet. It is a free provider and does not have profiles on major services like LinkedIn, Facebook, and iCloud. The lack of digital presence can simply indicate a new email address, but it is usually suspicious."
				echo
				echo "/\/\/\/\/\ Next, a website will be opened where we will click on the magnifying glass and fill in the Captcha /\/\/\/\/"
				echo
				echo "Opening Browser...."
				sleep 2
				#open -a "Firefox 'https://epieos.com/?q=$email'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Search 121 social networks for an account with that Email (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				sudo holehe --only-used --no-clear $email
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "Searching for a GitHub account linked to that email"
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				sudo python3 requisites/osgint/osgint.py -e $email
				echo
				echo "If it returns a Username, within Section [4] Social Network Information"
				echo "we have the option [6] Information + email of a GitHub account which will return Account Info"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Use Google Dorks (See where the Email has been published) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				echo "Opening Browser (When the processes are finished)...."
				#open -a "Firefox 'https://www.google.com/search?q=%22$email%22'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Verify if the Email exists (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				echo "Opening Browser and All Tabs...."
				sleep 2
				open -a "Firefox 'https://epieos.com/?q=$email'" | open -a "Firefox 'https://www.google.com/search?q=%22$email%22'" | open -a "Firefox 'https://verify-email.org'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			7 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
				sleep 1
				bash requisites/5.sh
	esac
echo
echo
echo "#####################"
echo "[1] Go back to Menu"
echo "[2] Run again"
echo "[3] Exit"
echo "#####################"
echo
read -p "Choose an option: " opc2
	case $opc2 in
			1 )	bash the_spy_job.sh
				;;
			2 )	bash requisites/5.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
	esac
