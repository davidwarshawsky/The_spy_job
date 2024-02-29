#!/bin/bash
user=`cat requisites/configuracion/.user_not_root.txt`

source requisites/0.sh

Title
echo "[4] Social Media Information"
echo
echo "========================================================="
echo "[1] GitHub Account Information + Email""                  |"
echo "---------------------------------------------------------"
echo "[2] Instagram Account Information""                      |"
echo "---------------------------------------------------------"
echo "[3] TikTok Account Information""                         |"
echo "---------------------------------------------------------"
echo "[4] Twitter Account Information""                        |"
echo "---------------------------------------------------------"
echo "[5] Twitch Account Information""                         |"
echo "---------------------------------------------------------"
echo "[6] Telegram Account Information""                       |"
echo "---------------------------------------------------------"
echo "[7] All (GitHub, Instagram, TikTok, Twitter, Twitch, Tg)""|"
echo "---------------------------------------------------------"
echo "[8] Back to Menu""                                       |"
echo "========================================================="
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Enter the username of the Target (Eg: anonymous23): " username
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://github.com/$username > requisites/resultados/Git-$username.txt
				echo "[*] User: @$username"
				echo "[*] Name: " `cat requisites/resultados/Git-$username.txt | awk '/title/ {print $2}' | cut -c 2-`
				echo "[*] Description: " `cat requisites/resultados/Git-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile Picture: " `cat requisites/resultados/Git-$username.txt | awk '/url/&&/avatars/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile URL: https://github.com/$username"
				echo
				sleep 2
				sudo python3 requisites/osgint/osgint.py -u $username
				echo
				echo "Opening Browser...."
				echo
				sleep 2
				open -a "Firefox" "https://github.com/$username"
				;;
			2 )	echo
				read -p "[*] Enter the username of the Target (Eg: anonymous23): " username
				echo
				echo "#################################"
				echo "[☢] UserName: @$username"
				echo "#################################"
				echo
				wget --wait=40 --limit-rate=40K -U Mozilla -bq https://www.picnob.com/profile/$username/ -O requisites/resultados/Ig-$username.txt >/dev/null
				sleep 6
				echo "[*] User: @$username"
				echo "[*] Name: " `cat requisites/resultados/Ig-$username.txt | awk -F= '/"fullname">/ {print $2}' | cut -c 12- | rev | cut -c6- | rev`
				echo "[*] Description: " `cat requisites/resultados/Ig-$username.txt | awk '/div class="sum"/ {print}' | cut -c 18- | rev | cut -c7- | rev | awk 'NR==1{print}'`
				echo "[*] Posts: " `cat requisites/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==1{print}'`
				echo "[*] Followers: " `cat requisites/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==2{print}'`
				echo "[*] Following: " `cat requisites/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==3{print}'`
				echo "[*] Account Status(Empty = Public): " `cat requisites/resultados/Ig-$username.txt | awk -F= '/This account/ {print}' | cut -c 18- | rev | cut -c7- | rev`
				echo
				echo "[*] Profile Picture: " `cat requisites/resultados/Ig-$username.txt | awk '/href/&&/scontent/ {print $2}' | cut -c 7- | rev | cut -c10- | rev`
				echo
				echo "[*] Profile URL: https://www.instagram.com/$username"
				echo
				echo "Opening Browser...."
				echo
				sleep 2
				open -a "Firefox 'https://www.picuki.com/profile/$username'" | open -a "Firefox 'https://www.picnob.com/search/?q=$username'"
				;;
			3 )	echo
				read -p "[*] Enter the username of the Target (Eg: anonymous23): " username
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s https://urlebird.com/es/user/$username/ > requisites/resultados/TikTok-$username.txt
				echo "[*] User: @$username"
				echo "[*] Name: " `cat requisites/resultados/TikTok-$username.txt | awk '/<h5 class="text-dark">/ {print}' | cut -c 23- | rev | cut -c6- | rev`
				echo "[*] Description: " `cat requisites/resultados/TikTok-$username.txt | awk '/<p>/ {print}' | cut -c 4- | rev | cut -c5- | rev`
				echo "[*] Followers: " `cat requisites/resultados/TikTok-$username.txt | awk '/seguidores/ {print $5}'`
				echo "[*] Following: " `cat requisites/resultados/TikTok-$username.txt | awk '/siguiendo/ {print $6}'`
				echo
				echo "[*] Profile Picture: " `cat requisites/resultados/TikTok-$username.txt | awk '/"image"/ {print}' | cut -c 14- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile URL: https://www.tiktok.com/@$username"
				echo
				echo "Opening Browser...."
				echo
				sleep 2
				open -a "Firefox" "https://urlebird.com/es/user/$username/" && open -a "Firefox"  "https://www.tiktok.com/@$username"
				;;
			4 )	echo
				read -p "[*] Enter the username of the Target (Eg: anonymous23): " username
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				wget --wait=40 --limit-rate=40K -U Mozilla -bq https://nitter.net/$username -O requisites/resultados/Twitter-$username.txt >/dev/null
				sleep 6
				echo "[*] User + Name: " `cat requisites/resultados/Twitter-$username.txt | awk -F= '/og:title/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				echo "[*] Description: " `cat requisites/resultados/Twitter-$username.txt | awk -F= '/og:description/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				echo "[*] Joined on: " `cat requisites/resultados/Twitter-$username.txt | awk -F= '/profile-joindate/ {print $3}' | cut -c 2- | rev | cut -c13- | rev`
				echo "[*] Tweets: " `cat requisites/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==1{print}'`
				echo "[*] Following: " `cat requisites/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==2{print}'`
				echo "[*] Followers: " `cat requisites/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==3{print}'`
				echo "[*] Likes: " `cat requisites/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==4{print}'`
				echo
				echo "[*] Profile Picture: " `cat requisites/resultados/Twitter-$username.txt | awk -F= '/twitter:image:src/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				echo
				echo "[*] Profile URL: https://nitter.net/$username"
				echo
				echo "Opening Browser...."
				echo
				sleep 2
				open -a "Firefox" 'https://nitter.net/$username'
				;;
			5 )	echo
				read -p "[*] Enter the username of the Target (Eg: anonymous23): " username
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://www.twitch.tv/$username > requisites/resultados/Twitch-$username.txt
				echo "[*] User: @$username"
				echo "[*] Name: " `cat requisites/resultados/Twitch-$username.txt | awk '/title/ {print}' | cut -c 19- | rev | cut -c3- | rev`
				echo "[*] Description: " `cat requisites/resultados/Twitch-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile Picture: " `cat requisites/resultados/Twitch-$username.txt | awk '/url/&&/static-cdn/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile URL: https://www.twitch.tv/$username"
				echo
				echo "Opening Browser...."
				echo
				sleep 2
				open -a "Firefox" "https://www.twitch.tv/$username"
				;;
			6 )	echo
				read -p "[*] Enter the username of the Target (Eg: anonymous23): " username
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://t.me/$username > requisites/resultados/Tg-$username.txt
				echo "[*] User: @$username"
				echo "[*] Name: " `cat requisites/resultados/Tg-$username.txt | awk '/title/ {print}' | cut -c 19- | rev | cut -c3- | rev`
				echo "[*] Description: " `cat requisites/resultados/Tg-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile Picture: " `cat requisites/resultados/Tg-$username.txt | awk '/url/&&/cdn4/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile URL: https://t.me/$username"
				echo
				echo "Opening Browser...."
				echo
				sleep 2
				open -a "Firefox" 'https://t.me/$username'
				;;
			7 )	echo
				read -p "[*] Enter the username of the Target (Eg: anonymous23): " username
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) GitHub Account Information (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://github.com/$username > requisites/resultados/Git-$username.txt
				echo "[*] User: @$username"
				echo "[*] Name: " `cat requisites/resultados/Git-$username.txt | awk '/title/ {print $2}' | cut -c 2-`
				echo "[*] Description: " `cat requisites/resultados/Git-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile Picture: " `cat requisites/resultados/Git-$username.txt | awk '/url/&&/avatars/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile URL: https://github.com/$username"
				echo
				sleep 2
				sudo python3 requisites/osgint/osgint.py -u $username
				echo
				echo "Opening Browser (After the processes are finished)...."
				echo
				sleep 2
				#open -a "Firefox" 'https://github.com/$username'
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Instagram Account Information (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				wget --wait=40 --limit-rate=40K -U Mozilla -bq https://www.picnob.com/profile/$username/ -O requisites/resultados/Ig-$username.txt >/dev/null
				sleep 6
				echo "[*] User: @$username"
				echo "[*] Name: " `cat requisites/resultados/Ig-$username.txt | awk -F= '/"fullname">/ {print $2}' | cut -c 12- | rev | cut -c6- | rev`
				echo "[*] Description: " `cat requisites/resultados/Ig-$username.txt | awk '/div class="sum"/ {print}' | cut -c 18- | rev | cut -c7- | rev | awk 'NR==1{print}'`
				echo "[*] Posts: " `cat requisites/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==1{print}'`
				echo "[*] Followers: " `cat requisites/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==2{print}'`
				echo "[*] Following: " `cat requisites/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==3{print}'`
				echo "[*] Account Status (Empty = Public): " `cat requisites/resultados/Ig-$username.txt | awk -F= '/This account/ {print}' | cut -c 18- | rev | cut -c7- | rev`
				echo
				echo "[*] Profile Picture: " `cat requisites/resultados/Ig-$username.txt | awk '/href/&&/scontent/ {print $2}' | cut -c 7- | rev | cut -c10- | rev`
				echo
				echo "[*] Profile URL: https://www.instagram.com/$username"
				echo
				sleep 2
				#open -a "Firefox" 'https://www.picuki.com/profile/$username' | open -a "Firefox" 'https://www.picnob.com/search/?q=$username'
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Informacion de una cuenta de TikTok (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s https://urlebird.com/es/user/$username/ > requisites/resultados/TikTok-$username.txt
				echo "[*] User: @$username"
				echo "[*] Name: " `cat requisites/resultados/TikTok-$username.txt | awk '/<h5 class="text-dark">/ {print}' | cut -c 23- | rev | cut -c6- | rev`
				echo "[*] Description: " `cat requisites/resultados/TikTok-$username.txt | awk '/<p>/ {print}' | cut -c 4- | rev | cut -c5- | rev`
				echo "[*] Followers: " `cat requisites/resultados/TikTok-$username.txt | awk '/followers/ {print $5}'`
				echo "[*] Following: " `cat requisites/resultados/TikTok-$username.txt | awk '/following/ {print $6}'`
				echo
				echo "[*] Profile Picture: " `cat requisites/resultados/TikTok-$username.txt | awk '/"image"/ {print}' | cut -c 14- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile URL: https://www.tiktok.com/@$username"
				echo
				echo "Opening Browser (After the processes are finished)...."
				echo
				sleep 2
				#open -a "Firefox 'https://urlebird.com/es/user/$username/'" | open -a "Firefox 'https://www.tiktok.com/@$username'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Twitter Account Information (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				wget --wait=40 --limit-rate=40K -U Mozilla -bq https://nitter.net/$username -O requisites/resultados/Twitter-$username.txt >/dev/null
				sleep 6
				echo "[*] User + Name: " `cat requisites/resultados/Twitter-$username.txt | awk -F= '/og:title/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				echo "[*] Description: " `cat requisites/resultados/Twitter-$username.txt | awk -F= '/og:description/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				echo "[*] Joined on: " `cat requisites/resultados/Twitter-$username.txt | awk -F= '/profile-joindate/ {print $3}' | cut -c 2- | rev | cut -c13- | rev`
				echo "[*] Tweets: " `cat requisites/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==1{print}'`
				echo "[*] Following: " `cat requisites/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==2{print}'`
				echo "[*] Followers: " `cat requisites/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==3{print}'`
				echo "[*] Likes: " `cat requisites/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==4{print}'`
				echo
				echo "[*] Profile Picture: " `cat requisites/resultados/Twitter-$username.txt | awk -F= '/twitter:image:src/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				echo
				echo "[*] Profile URL: https://nitter.net/$username"
				echo
				echo "Opening Browser (After the processes are finished)...."
				#open -a "Firefox 'https://nitter.net/$username'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Twitch Account Information (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://www.twitch.tv/$username > requisites/resultados/Twitch-$username.txt
				echo "[*] User: @$username"
				echo "[*] Name: " `cat requisites/resultados/Twitch-$username.txt | awk '/title/ {print}' | cut -c 19- | rev | cut -c3- | rev`
				echo "[*] Description: " `cat requisites/resultados/Twitch-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile Picture: " `cat requisites/resultados/Twitch-$username.txt | awk '/url/&&/static-cdn/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile URL: https://www.twitch.tv/$username"
				echo
				echo "Opening Browser (After the processes are finished)...."
				sleep 2
				#open -a "Firefox 'https://www.twitch.tv/$username'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Informacion de una cuenta de Telegram (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://t.me/$username > requisites/resultados/Tg-$username.txt
				echo "[*] User: @$username"
				echo "[*] Name: " `cat requisites/resultados/Tg-$username.txt | awk '/title/ {print}' | cut -c 19- | rev | cut -c3- | rev`
				echo "[*] Description: " `cat requisites/resultados/Tg-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile Picture: " `cat requisites/resultados/Tg-$username.txt | awk '/url/&&/cdn4/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] Profile URL: https://t.me/$username"
				echo
				echo "Opening Browser and All Tabs...."
				open -a "Firefox" 'https://github.com/$username' || open -a "Firefox" 'https://www.picuki.com/profile/$username' | open -a "Firefox" 'https://www.picnob.com/search/?q=$username' | open -a "Firefox" 'https://urlebird.com/es/user/$username/' | open -a "Firefox" 'https://www.tiktok.com/@$username' | open -a "Firefox" 'https://nitter.net/$username' | open -a "Firefox" 'https://www.twitch.tv/$username' | open -a "Firefox" 'https://t.me/$username'
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			8 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY is not a valid option"
				sleep 1
				bash requisites/4.sh
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
				2 )	bash requisites/4.sh
					;;
				3 )	exit
					;;
				* )	echo
					echo "$RRPLY is not a valid option"
		esac
