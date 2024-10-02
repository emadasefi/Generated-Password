#!/bin/bash


# Colors
Purple='\033[0;34m'
Cyan='\033[0;36m'
Yellow='\033[0;33m'
NC='\033[0m'

# Greeting
echo -e "${Purple}============================================="
echo "Welcome to My Password Generator"
echo "__author__	=	Emad Asefi <emad.asefi@gmail.com>"
echo "__copyright__	=	Copyright © 2024"
echo "__date__	=	'2024-09-19'"
echo "__license__	=	MIT"
echo "__version__	=	'1.1.10'"
echo -e "=============================================${NC}"

# سوال از کاربر در رابطه با انتخاب زبان راهنما
echo -e "${Cyan} Please enter the language Script? (en/fa)${NC}"
read  LANGUAGE
########################################################
########################################################
if [ "$LANGUAGE" = "fa" ]; then

# سوال از کاربر جهت وارد کردن تعداد طول پسورد
echo -e "${Cyan} l- لطفا طول پسورد (کاراکتر) را وارد کنید :${NC}"

# وارد کردن طول پسورد
read  PASS_LENGTH

# بررسی مقدرا وارد شده
if ! [[ $PASS_LENGTH =~ ^[0-9]+$ ]]; then
    echo -e "${Cyan} l- خطا: لطفا مقدار صحیح از اعداد را وارد کنید${NC}"
    exit 1
fi

passwords=()
# ایجاد 3 پسورد در لوپ
for p in $(seq 1 3);
do
    passwords+=("$(openssl rand -base64 48 | cut -c1-$PASS_LENGTH )")
done

#نمایش پسورد های ایجاد شده
echo -e "${Cyan} ====>> ${NC}"
printf "${Yellow} %s\n" "${passwords[@]}"
echo -e "${NC}"
fi
########################################################
########################################################
if [ "$LANGUAGE" = "en" ]; then
		
# ask the user how long password should be
echo -e "${Cyan}Please enter the length of the password:${NC}"

# read the input given by user and store in variable
read  PASS_LENGTH

#Validate input
if ! [[ $PASS_LENGTH =~ ^[0-9]+$ ]]; then
    echo -e "${Cyan}Error: Please enter a valid number.${NC}"
    exit 1
fi

passwords=()
# loop will create 3 passwords according to user as per length given by user and save them to array
for p in $(seq 1 3);
do
    passwords+=("$(openssl rand -base64 48 | cut -c1-$PASS_LENGTH )")
done

#Display generated passwords
echo -e "${Cyan} ====>> ${NC}"
printf "${Yellow} %s\n" "${passwords[@]}"
echo -e "${NC}"
fi