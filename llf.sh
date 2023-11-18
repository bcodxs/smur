#!/bin/bash
source helloworld.sh
echo -n "InputGlobalText: "
read sayhello
echo -e "\e[1;32m${sayhello}\e[0m"
