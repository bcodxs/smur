#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
Z="\e[0m"

echo -e "
█▀▀ █▀▄▀█ █░░█ █▀▀█ 
▀▀█ █░▀░█ █░░█ █▄▄▀ 
▀▀▀ ▀░░░▀ ░▀▀▀ ▀░▀▀"
echo -e "\t————————————————————————————"
#echo -e "\e[44m \tSmur \e[0m"
echo -e "\t>Folder and File Analyze [F]"
echo -e "\t>System Connection View [SV]"
echo -e "\t>Setup[S]"
echo -e "\t————————————————————————————"
echo -e "\t    mini auditor simple"

#This is FFA (Folder && File Analyze functions
FFA(){
    echo "Folder an File Audit"
    echo "press [E][e] to Exit"
    while true; do
#create multi toolkit
        read -p ">" options
#        c=$(echo $options | sed 's/.*/\U&/')
        if [ $(echo $options | sed 's/.*/\U&/') = "E" ]; then
            exit 0
        fi
    done
}

#This is setup functions for language && other feature
rSetup(){
    clear
    echo ">Selector Language [L]"
    echo ">Save any result on format txt [e]enable or [d]disable"
    #Search is setup feature && Configuraciones
    read options
    if [ $(find . -type f -name "setup.txt") =  "setup.txt" ]; then
        echo "setup done"
    fi
}
#Menu FFSP selection and other
#FFSP=$1

#read menu
rMain(){
    read -p ">" FFSP
    if [ $(echo $FFSP | sed 's/.*/\U&/') = "F" ]; then
        echo "$(clear)"
        FFA
    elif [ $(echo $FFSP | sed 's/.*/\U&/') = "S" ]; then
        #call rSetup functions
        rSetup
    else
        echo "N/A"
    fi
}

#=====================
rMain
#=====================
