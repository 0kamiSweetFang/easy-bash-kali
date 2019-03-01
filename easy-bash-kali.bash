#prompt souces.list
read -r -p "[?] Would you like to replace souces.list? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        cd /etc/apt
	echo "deb http://http.kali.org/ /kali main contrib non-free
	deb http://http.kali.org/ /wheezy main contrib non-free
	deb http://http.kali.org/kali kali-dev main contrib non-free
	deb http://http.kali.org/kali kali-dev main/debian-installer
	deb-src http://http.kali.org/kali kali-dev main contrib non-free
	deb http://http.kali.org/kali kali main contrib non-free
	deb http://http.kali.org/kali kali main/debian-installer
	deb-src http://http.kali.org/kali kali main contrib non-free
	deb http://security.kali.org/kali-security kali/updates main contrib non-free
	deb-src http://security.kali.org/kali-security kali/updates main contrib non-free
	deb http://ftp.us.debian.org/debian squeeze main" >>souces.list
	cd ..
	cd ..
	echo "[*] Done: souces.list"
	;;
    *)
        echo "[!] Cancelled: souces.list"
        ;;
esac

read -r -p "[?] Would you like to update? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        sudo apt-get update
	echo "[*] Done: Update"
        ;;
    *)
        echo "[!] Canceled: update"
        ;;
esac

read -r -p "[?] Download & install kickthemout? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
	git clone https://github.com/k4m4/kickthemout
	sudo apt-get remove python3-pip; sudo apt-get install python3-pip
	pip3 install kamene
	pip3 install python-nmap
	echo "[*] Done: kickthemout"
        ;;
    *)
	echo "[!] Canceled download & install of kickthemout"
        ;;
esac

read -r -p "[?] Download & install unicorn? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        git clone https://github.com/trustedsec/unicorn
	echo "[*] Done: unicorn"
        ;;
    *)
        echo "[!] Canceled: unicorn"
        ;;
esac

read -r -p "[?] Download & install venom? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
	git clone https://github.com/r00t-3xp10it/venom
	echo "[*] Done: venom"
        ;;
    *)
        echo "[!] Canceled: venom"
        ;;
esac

read -r -p "[?] Download & install Eternalblue-Doublepulsar? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        git clone https://github.com/ElevenPaths/Eternalblue-Doublepulsar-Metasploit
	echo "[*] Done: Eternalblue-Doublepulsar"        
	;;
    *)
        echo "[!] Canceled: Eternalblue-Doublepulsar"
        ;;
esac

read -r -p "[?] Download & install CHAOS? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        git clone https://github.com/tiagorlampert/CHAOS.git
        echo "[*] Done: CHAOS"
        ;;
    *)
        echo "[!] Canceled: CHAOS"
        ;;
esac

read -r -p "[?] Download & install TheFatRat? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
	git clone https://github.com/Screetsec/TheFatRat
	cd TheFatRat
	chmod +x setup.sh
	./setup.sh
	cd ..
        echo "[*] Done: TheFatRat"
        ;;
    *)
        echo "[!] Canceled: TheFatRat"
        ;;
esac

read -r -p "[?] Download & install lscript? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
	git clone https://github.com/arismelachroinos/lscript
	cd lscript
	chmod +x install.sh
	./install.sh
	cd ..
        echo "[*] Done: lscript"
        ;;
    *)
        echo "[!] Canceled: lscript"
        ;;
esac

read -r -p "[?] Would you like to cancel screen rotation reset? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo "[!] Caceled: reset screen rotation"
        ;;
    *)
        xrandr -o 0
        echo "[*] Done: reset screen rotation"
        ;;
esac

echo "[*] DONE!!!"
