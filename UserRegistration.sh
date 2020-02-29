#!/bin/bash -x

echo " ****************************** WELCOME TO USER REGISTRATION ****************************** "

#FUNCTION FOR VALIDATE FIRST NAME USING REGEX
function firstName()
{
	read -p "Enter first name: " firstName
	local regexPattern="^[A-Z][a-zA-Z]{2,}$"

	if [[ $firstName =~ $regexPattern ]]
	then
		printf "First name is valid."
	else
		printf "Invalid first name please enter name starts with capital and has minimum 3 characters."
	fi
}

firstName
