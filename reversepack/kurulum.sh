#!/bin/bash
#
#
##############################################
# Junkp0int3r (Binary SHellc0de)
# 
# https://sudo-security.github.io
# https://twitter.com/BShellcode
# https://www.youtube.com/channel/UCthLC9poGoZ12hfSO71hWmg
#
##############################################

clear
echo "

[+]-------------------------------------------------------------------[+]
         _             _           ___  _       _   _____      
        | |_   _ _ __ | | ___ __  / _ \(_)_ __ | |_|___ / _ __ 
     _  | | | | |  _ \| |/ /  _ \| | | | |  _ \| __| |_ \|  __|
    | |_| | |_| | | | |   <| |_) | |_| | | | | | |_ ___) | |   
     \___/ \__ _|_| |_|_|\_\ .__/ \___/|_|_| |_|\__|____/|_|   
                           |_|     
 
[+]-----------------[Reverse Toolpack Installation]--------------------[+]

"
echo '[?] Kurulum Baslatilsin mi ? Y/n : ' ;read secim
if [[ $secim == "Y" ]] || [[ $secim == "y" ]]
then
echo''	
echo '[+] Kurulum Baslatiliyor...'
echo ''
sleep 1
cd /bin

#Dosyalari indir
#18/03/2020 - Güncelleme
wget https://raw.githubusercontent.com/sudo-security/rpack/master/arayici.sh
wget https://raw.githubusercontent.com/sudo-security/rpack/master/adress.c
wget https://raw.githubusercontent.com/sudo-security/rpack/master/clibfind.c
#Eski
wget https://raw.githubusercontent.com/sudo-security/rpack/master/aslrcontrol.c
wget https://raw.githubusercontent.com/sudo-security/rpack/master/checkend.c
wget https://raw.githubusercontent.com/sudo-security/rpack/master/pattern_fuzzer.c
wget https://raw.githubusercontent.com/sudo-security/rpack/master/pattern_offset.c
wget https://raw.githubusercontent.com/sudo-security/rpack/master/peda.c
wget https://raw.githubusercontent.com/sudo-security/rpack/master/suid_dump.c
wget https://raw.githubusercontent.com/sudo-security/rpack/master/rpack-uninstall.c
wget https://raw.githubusercontent.com/sudo-security/rpack/master/rmpack.sh
git clone https://github.com/longld/peda.git ~/peda


clear

#Derle
gcc aslrcontrol.c -o aslr
gcc checkend.c -o checkend
gcc pattern_fuzzer.c -o pattern_fuzzer
gcc pattern_offset.c -o pattern_offset
gcc peda.c -o peda
gcc suid_dump.c -o suid_dump
gcc rpack-uninstall.c -o rpack-uninstall
gcc clibfind.c -o clibfind
gcc adress.c -o adress

clear

#Indirilen Kaynaklari Sil
rm clibfind.c
rm adress.c
rm aslrcontrol.c
rm checkend.c
rm pattern_fuzzer.c
rm pattern_offset.c
rm peda.c
rm suid_dump.c
rm rpack-uninstall.c
clear
echo "

[+]-------------------------------------------------------------------[+]
         _             _           ___  _       _   _____      
        | |_   _ _ __ | | ___ __  / _ \(_)_ __ | |_|___ / _ __ 
     _  | | | | |  _ \| |/ /  _ \| | | | |  _ \| __| |_ \|  __|
    | |_| | |_| | | | |   <| |_) | |_| | | | | | |_ ___) | |   
     \___/ \__ _|_| |_|_|\_\ .__/ \___/|_|_| |_|\__|____/|_|   
                           |_|     
 
[+]-----------------[Reverse Toolpack Installation]--------------------[+]

"
echo '[+] Kurulum Tamamlandi..!'
echo ''
echo '[!] Reverse Pack Uninstall icin : rpack-uninstall yazmanız yeterlidir !'
sleep 2
exit
else
echo "

[+]-------------------------------------------------------------------[+]
         _             _           ___  _       _   _____      
        | |_   _ _ __ | | ___ __  / _ \(_)_ __ | |_|___ / _ __ 
     _  | | | | |  _ \| |/ /  _ \| | | | |  _ \| __| |_ \|  __|
    | |_| | |_| | | | |   <| |_) | |_| | | | | | |_ ___) | |   
     \___/ \__ _|_| |_|_|\_\ .__/ \___/|_|_| |_|\__|____/|_|   
                           |_|     
 
[+]-----------------[Reverse Toolpack Installation]--------------------[+]


"
echo '[!] Cikiliyor...'
echo ''
echo '[!] Kurulumu Baslatmak icin "Y" veya "y" ye basiniz..'
sleep 1
exit
fi
