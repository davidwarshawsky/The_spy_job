#!/bin/bash
user=`cat requisites/configuracion/.user_not_root.txt`

source requisites/0.sh

Title
echo "[2] Person Information"
echo
echo "======================================================"
echo "[1] Use Google Dorks""                                |"
echo "------------------------------------------------------"
echo "[2] Use Specific Search Engine""                      |"
echo "------------------------------------------------------"
echo "[3] All (Social Media, Websites, Images, Posts, etc)"" |"
echo "------------------------------------------------------"
echo "[4] Go back to Menu""                                  |"
echo "======================================================"
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Enter the Name of the Target (e.g. Guillermo): " firstName
				read -p "[*] Enter the 1st Last Name of the Target (e.g. Vicente): " middleName
				read -p "[*] Enter the 2nd Last Name of the Target (e.g. Ibanez): " lastName
				read -p "[*] Optional keyword (e.g. Phone, Email, Location, etc): " info
				echo
				echo "###########################################"
				echo "[☢] Name: $firstName $middleName $lastName"
				echo "###########################################"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				sudo -u $user open "https://www.google.com/search?q=%22$firstName+$middleName+$lastName%22"
				sudo -u $user open "https://www.google.com/search?q=%22$firstName+$middleName+$lastName%22+$info"
				;;
			2 )	echo
				read -p "[*] Enter the Name of the Target (e.g. Guillermo): " firstName
				read -p "[*] Enter the 1st Last Name of the Target (e.g. Vicente): " middleName
				read -p "[*] Enter the 2nd Last Name of the Target (e.g. Ibanez): " lastName
				echo
				echo "###########################################"
				echo "[☢] Name: $firstName $middleName $lastName"
				echo "###########################################"
				echo
				echo "Opening Browser...."
				sleep 2
				open "https://www.idcrawl.com/$firstName-$middleName-$lastName"
				;;
			3 )	echo
				read -p "[*] Enter the Name of the Target (e.g. Guillermo): " firstName
				read -p "[*] Enter the 1st Last Name of the Target (e.g. Vicente): " middleName
				read -p "[*] Enter the 2nd Last Name of the Target (e.g. Ibanez): " lastName
				read -p "[*] Optional keyword (e.g. Phone, Email, Location, etc): " info
				echo
				echo "###########################################"
				echo "[☢] Name: $firstName $middleName $lastName"
				echo "###########################################"
				echo
				echo
				echo "==========================="
				echo "Collecting Information"
				echo "and opening browsers"
				echo "==========================="
				echo "------->""                  |"
				sleep 1
				echo "------------>""             |"
				sleep 1
				echo "------------------->""      |"
				sleep 1
				echo "------------------------->""|"
				echo "==========================="
				echo
				echo "Opening Browser...."
				sleep 2
				open "https://www.google.com/search?q=%22$firstName+$middleName+$lastName%22"
				open "https://www.google.com/search?q=%22$firstName+$middleName+$lastName%22+$info"
				open "https://www.idcrawl.com/$firstName-$middleName-$lastName"
				;;
			4 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY is not a valid option"
				sleep 1
				bash requisites/2.sh
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
			2 )	bash requisites/2.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY is not a valid option"
	esac
