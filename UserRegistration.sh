#!/bin/bash -x

echo " ****************************** WELCOME TO USER REGISTRATION ****************************** "

#FUNCTION FOR VALIDATE FIRST NAME USING REGEX
function firstName()
{
	read -p "Enter first name: " firstName
	local regexPattern="^[A-Z][a-zA-Z]{2,}$"

	if [[ $firstName =~ $regexPattern ]]
	then
		echo "First name is valid."
	else
		echo "Invalid first name please enter name starts with capital and has minimum 3 characters."
	fi
}

#FUNCTION FOR VALIDATE LAST NAME USING REGEX
function lastName()
{
	read -p "Enter last name: " lastName
	local regexPattern="^[A-Z][a-zA-Z]{2,}$"

	if [[ $lastName =~ $regexPattern ]]
	then
		echo "Last name is valid."
	else
		echo "Invalid last name please enter name starts with capital and has minimum 3 characters."
	fi
}

#FUNCTION FOR VALIDATE EMAIL USING REGEX
function email()
{
	read -p "Enter email: " email
	local regexPattern="^[a-zA-Z0-9]+([._+-]?[a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,3}([.][a-zA-Z]{2,3})?$"

	if [[ $email =~ $regexPattern ]]
	then
		echo "Valid email."
	else
		echo "Invalid email."
	fi
}

#FUNCTION TO VALIDATE MOBILE NUMBER IN REGEX
function mobileNumber()
{
	read -p "Enter mobile number: " mobileNumber
	local regexPattern="^[0-9]{2}[ ][0-9]{10}$"

	if [[ $mobileNumber =~ $regexPattern ]]
	then
		echo "Valid mobile number."
	else
		echo "Invalid mobile number."
	fi
}

firstName
lastName
email
mobileNumber
