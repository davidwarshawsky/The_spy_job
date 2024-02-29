#!/bin/bash

source requisites/0.sh

Title
echo "                                [0] ==> Install and Configure Requirements <== 🔍"
echo "                                [1] Information about a Website/Company     🔍"
echo "                                [2] Information about a Person               🔍"
echo "                                [3] Information about a Nickname/Alias       🔍"
echo "                                [4] Information about a Social Media Profile 🔍"
echo "                                [5] Information about an Email               🔍"
echo "                                [6] Information about a Phone Number         🔍"
echo "                                [7] Information about a Public IP Address    🔍"
echo "                                [8] Information about a Video/YouTube Channel🔍"
echo "                                [9] Information about an Image               🔍"
echo "                                [99] -------------> Exit"" <--------------- 🔍"
echo
read -p "[*] Choose an option: " opc1
	case $opc1 in
			0 )	bash requisites/0.sh
				;;
			1 )	bash requisites/1.sh
				;;
			2 )	bash requisites/2.sh
				;;
			3 )	bash requisites/3.sh
				;;
			4 )	bash requisites/4.sh
				;;
			5 )	bash requisites/5.sh
				;;    
			6 )	bash requisites/6.sh
				;;
			7 )	bash requisites/7.sh
				;;
			8 )	bash requisites/8.sh
				;;
			9 )	bash requisites/9.sh
				;;
			99 )	exit
				;;
			* )	echo
                                echo "$RRPLY is not a valid option"
				bash the_spy_job.sh
	esac
