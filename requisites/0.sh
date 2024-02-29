#!/bin/bas

function Title {
	clear
	echo            
	echo "                     _____  _                                 _          _         _      "
	echo "                    |_   _|| |      ◤  тнє ѕρу'ѕ נσв  ◥      ( )        (_)       | |     "
	echo "                      | |  | |__    ___    ___  _ __   _   _ |/  ___     _   ___  | |__   "
	echo "                      | |  | '_ \  / _ \  / __|| '_ \ | | | |   / __|   | | / _ \ | '_ \  "
	echo "                      | |  | | | ||  __/  \__ \| |_) || |_| |   \__ \   | || (_) || |_) | "
	echo "                      \_/  |_| |_| \___|  |___/| .__/  \__, |   |___/   | | \___/ |_.__/  "
	echo "                                               | |      __/ |   ★  ★   _/ |               "
	echo "                                               |_|     |___/          |__/                "
	echo "                              __________________________________________________"					
	echo "                               ︻デ═一  Created by: XDeadHackerX v2.1  ︻デ═一 " 
	echo "          -------------------------------------------------------------------------------------------"
    echo "          Any action or activity related to The spy's job is solely your responsibility"
	echo "          -------------------------------------------------------------------------------------------" 
	echo
	echo
}
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    Title
    echo "[0] Install and Configure Requirements"
    echo
    echo "================================="
    echo "[1] Install Requirements""         |"
    echo "[2] Configure veriphone.io API""  |"
    echo "[3] Configure Shodan API""         |"
    echo "[4] Configure ZoomEye API""        |"
    echo "[5] Return to Menu""               |"
    echo "================================="
    echo
    echo
    read -p "[*] Choose an option: " opc1
    case $opc1 in
        1 ) echo
            if ! [ -d requirements/configuration ]; then
                mkdir requirements/configuration
            fi
            echo
            echo "System Users: " 
            echo "_____________"
            users
            echo
            read -p "Enter the username from the list above that DOES NOT HAVE root permissions: " user
            echo $user > requirements/configuration/.user_not_root.txt

            if ! [ -d requirements/results ]; then
                mkdir requirements/results
            fi

            cd requirements

            brew install curl
            brew install wget
            brew install git
            brew install python3
            brew install python@3.8
            brew install pip
            brew install pip3
            pip3 install --upgrade pip
            brew install nmap
            brew install whatweb
            brew install whois
            brew install netdiscover
            pip install shodan
            brew install xterm
            brew install macchanger
            pip3 install ignorant
            brew install exiftool
            brew install sslscan
            brew install hakrawler
            brew install naabu
            brew install gedit
            brew install wpscan
            brew install firefox
            pip3 install zoomeye


            sudo rm -r Cloudmare
            sudo rm -r blackbird
            sudo rm -r osgint
            sudo rm -r holehe
            sudo rm -r ZoomEye-python

            sudo git clone https://github.com/MrH0wl/Cloudmare.git && cd Cloudmare && chmod 777 Cloudmare.py

            cd ..

            sudo git clone https://github.com/knownsec/ZoomEye-python.git && cd ZoomEye-python && pip3 install -r requirements.txt && python3 setup.py install

            cd ..

            sudo git clone https://github.com/hippiiee/osgint.git && cd osgint && pip3 install -r requirements.txt

            cd ..

            sudo git clone https://github.com/p1ngul1n0/blackbird.git && cd blackbird && pip install -r requirements.txt

            cd ..

            sudo git clone https://github.com/megadose/holehe.git && cd holehe && python3 setup.py install

            cd ..
            cd ..
            ;;
        2 ) echo
            read -p "[*] Paste below your API from https://veriphone.io: " API1
            echo $API1 > requirements/configuration/.api_phone.txt
            echo
            echo "Done"
            ;;
        3 ) echo
            read -p "[*] Paste below your Shodan.io API: " API2
            shodan init $API2
            echo $API2 > requirements/configuration/.api_shodan.txt
            echo
            echo "Done"
            ;;
        4 ) echo
            read -p "[*] Paste below your ZoomEye.org API: " API3
            zoomeye init -apikey $API3
            echo $API3 > requirements/configuration/.api_zoomeye.txt
            echo
            echo "Done"
            ;;
        5 ) bash the_spy_job.sh
            ;;
        * ) echo
            echo "Invalid option"
            sleep 1
            bash requirements/0.sh
    esac
    echo
    echo
    echo "#####################"
    echo "[1] Return to Menu"
    echo "[2] Run Again"
    echo "[3] Exit"
    echo "#####################"
    echo
    read -p "Choose an option: " opc2
    case $opc2 in
        1 ) bash the_spy_job.sh
            ;;
        2 ) bash requirements/0.sh
            ;;
        3 ) exit
            ;;
        * ) echo
            echo "Invalid option"
    esac
fi

