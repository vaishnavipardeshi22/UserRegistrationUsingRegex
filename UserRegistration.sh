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

#FUNCTION FOR VALIDATE LAST NAME USING REGEX
function lastName()
{
	read -p "Enter last name: " lastName
	local regexPattern="^[A-Z][a-zA-Z]{2,}$"

	if [[ $lastName =~ $regexPattern ]]
	then
		printf "Last name is valid."
	else
		printf "Invalid last name please enter name starts with capital and has minimum 3 characters."
	fi
}

#FUNCTION FOR VALIDATE EMAIL USING REGEX
function email()
{
	read -p "Enter email :" email
	local regexPattern="^[a-zA-Z0-9]+([._+-]?[a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,3}([.][a-zA-Z]{2,3})?$"

	if [[ $email =~ $regexPattern ]]
	then
		printf "Valid email."
	else
		printf "Invalid email."
	fi
}

firstName
lastName
email
