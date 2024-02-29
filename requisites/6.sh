#!/bin/bash
api=`cat requisites/configuracion/.api_phone.txt`
user=`cat requisites/configuracion/.user_not_root.txt`

source requisites/0.sh

Title
echo "[6] Information of a Phone Number"
echo
echo "============================================================="
echo "[1] View the Company and Country of the Phone Number""        |"
echo "-------------------------------------------------------------"
echo "[2] Check if it is registered on Instagram, Amazon, or Snapchat"" |"
echo "-------------------------------------------------------------"
echo "[3] Use Google Dorks (See where the Phone Number has been published)""|"
echo "-------------------------------------------------------------"
echo "[4] Attempt to extract the real name of the phone number owner""  |"
echo "-------------------------------------------------------------"
echo "[5] All (Company, Social Media, Google Dorks, Owner's Name)""  |"
echo "-------------------------------------------------------------"
echo "[6] Go back to Menu""                                          |"
echo "============================================================="
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Enter the Country Code of the Target Phone Number (e.g., 34): " code
				read -p "[*] Enter the Phone Number of the Target (e.g., 625295417): " phone
				echo
				echo "#############################"
				echo "[☢] Phone Number: +$code $phone"
				echo "#############################"
				echo
				curl -s "https://api.veriphone.io/v2/verify?phone=%2B$code-$phone&key=$api" > requisites/resultados/$phone.txt
				echo "[*] Valid: " `cat requisites/resultados/$phone.txt | awk -F',' '{print $3}' | cut -c 16-`
				echo "[*] Country: " `cat requisites/resultados/$phone.txt | awk -F',' '{print $6}' | cut -c 13- | rev | cut -c2- | rev`
				echo "[*] Company: " `cat requisites/resultados/$phone.txt | awk -F',' '{print $12}' | cut -c 13- | rev | cut -c3- | rev`
				;;
			2 )	echo
				read -p "[*] Enter the Country Code of the Target Phone Number (e.g., 34): " code
				read -p "[*] Enter the Phone Number of the Target (e.g., 62529541): " phone
				echo
				echo "#############################"
				echo "[☢] Phone Number: +$code $phone"
				echo "#############################"
				echo
				sudo ignorant --only-used --no-clear $code $phone
				;;
			3 )	echo
				read -p "[*] Enter the Country Code of the Target Phone Number (e.g., 34): " code
				read -p "[*] Enter the Phone Number of the Target (e.g., 62529541): " phone
				read -p "[*] Keyword /Optional/ (e.g., Name, Email, Location, etc): " info
				echo
				echo "#############################"
				echo "[☢] Phone Number: +$code $phone"
				echo "#############################"
				echo
				echo "Opening Browser...."
				sleep 2
				open -a "Firefox 'https://www.google.com/search?q=%22+$code$phone%22'" | open -a "Firefox 'https://www.google.com/search?q=%22+$code$phone%22+$info'"
				;;
			4 )	echo
				echo "Please enter the Phone Number on the website, select the country, and fill in any captchas that appear when clicking (Name Lookup)"
				echo
				echo "Opening Browser...."
				sleep 3
				open -a "Firefox 'https://www.revealname.com'"
				;;
			5 )	echo
				read -p "[*] Enter the Country Code of the Target Phone Number (e.g., 34): " codigo
				read -p "[*] Enter the Phone Number of the Target (e.g., 62529541): " telefono
				read -p "[*] Keyword /Optional/ (e.g., Name, Email, Location, etc): " info
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) View the Company and Country of the Phone Number (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Phone Number: +$codigo $telefono"
				echo "#############################"
				echo
				curl -s "https://api.veriphone.io/v2/verify?phone=%2B$codigo-$telefono&key=$api" > requisites/resultados/$telefono.txt
				echo "[*] Valid: " `cat requisites/resultados/$telefono.txt | awk -F',' '{print $3}' | cut -c 16-`
				echo "[*] Country: " `cat requisites/resultados/$telefono.txt | awk -F',' '{print $6}' | cut -c 12-`
				echo "[*] Company: " `cat requisites/resultados/$telefono.txt | awk -F',' '{print $12}' | cut -c 12-`
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Check if registered on Instagram, Amazon or Snapchat (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Phone Number: +$code $phone"
				echo "#############################"
				echo
				sudo ignorant --only-used --no-clear $codigo $telefono
				echo
				sleep 3
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Use Google Dorks (See where the Phone Number has been published) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Phone Number: +$code $phone"
				echo "#############################"
				echo
				echo "Opening Browser (When the processes are finished)...."
				#open -a "Firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22'"
				#open -a "Firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22+$info'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Try to extract the real name of the phone owner (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Phone: +$codigo $telefono"
				echo "#############################"
				echo
				echo "Enter the Phone Number on the website, select the country, and fill in any captchas that appear when clicking (Name Lookup)"
				echo
				echo "Opening Browser and All Tabs...."
				sleep 2
				open -a "Firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22'" | open -a "Firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22+$info'" | open -a "Firefox 'https://www.revealname.com'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
					6 )	bash the_spy_job.sh
						;;
					* )	echo
						echo "$RRPLY is not a valid option"
						sleep 1
						bash requisites/6.sh
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
			2 )	bash requisites/6.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY is not a valid option"
	esac
