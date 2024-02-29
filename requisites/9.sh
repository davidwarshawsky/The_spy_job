#!/bin/bash
user=`cat requisites/configuracion/.user_not_root.txt`

source requisites/0.sh

Title
echo "[9] Image Information"
echo
echo "======================================"
echo "[1] Extract Image Metadata""   |"
echo "--------------------------------------"
echo "[2] Search Image on Google""  |"
echo "--------------------------------------"
echo "[3] Use Specific Search Engine""         |"
echo "--------------------------------------"
echo "[4] Enlarge Image with 4x Quality""|"
echo "--------------------------------------"
echo "[5] All (Metadata, Search Engines, Tools)""|"
echo "--------------------------------------"
echo "[6] Go Back to Menu""                   |"
echo "======================================"
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Write the name of the file with its path (/home/kali/Desktop/Prueba.png): " imagen
				echo
				echo "################################################################"
				echo "[☢] Image: $imagen"
				echo "################################################################"
				echo
				primera=`echo $imagen | head -c 1`
				coma="'"
				if [ $primera = $coma ]
					then
						imagen=`echo $imagen | cut -c 2- | rev | cut -c2- | rev`
				fi
				sudo exiftool -v -s -G $imagen
				;;
			2 )	echo
				echo "Next, when the web page opens, drop the image and the search will begin"
				echo
				echo "Opening Browser...."
				sleep 2
				open -a "Firefox" 'https://www.google.com/imghp?hl=en&ogbl='
				echo
				;;
			3 )	echo
				echo "Next, when the web page opens, drop the image and the search will begin"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "Firefox 'https://tineye.com'"
				echo
				;;
			4 )	echo
				echo "A continuacion cuando se abrira la Pagina Web, dale al boton (Drag or Drop), selecciona la Imagen y pulse (Start All)"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				open -a "Firefox 'https://imgupscaler.com/'"
				echo
				;;
			5 )	echo
				read -p "[*] Write the name of the file with its path (/home/kali/Desktop/Prueba.png): " imagen
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Extrañendo Metadatos de la Imagen (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "################################################################"
				echo "[☢] Imagen: $imagen"
				echo "################################################################"
				echo
				primera=`echo $imagen | head -c 1`
				coma="'"
				if [ $primera = $coma ]
					then
						imagen=`echo $imagen | cut -c 2- | rev | cut -c2- | rev`
				fi
				sudo exiftool -v -s -G $imagen
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "Search the Image on Google to use its neural network and use a specific search engine"
				echo
				echo "################################################################"
				echo "[☢] Image: $imagen"
				echo "################################################################"
				echo
				echo "Next, when the web page opens, drop the image and the search will begin"
				echo
				echo "Opening Browser and All Tabs...."
				sleep 2
				open -a "Firefox" 'https://www.google.com/imghp?hl=en&ogbl='
				open -a "Firefox" 'https://tineye.com'
				open -a "Firefox" 'https://imgupscaler.com/'
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			6 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY is not a valid option"
				sleep 2
				bash requisites/9.sh
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
			2 )	bash requisites/9.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY is not a valid option"
	esac
