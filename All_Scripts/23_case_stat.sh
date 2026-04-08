#!/bin/bash

declare readonly username displayname

echo "*****User Details Script*****"
echo "Kindly select your option to perform the operation"
echo "a. Create User"
echo "b. Change Password"
echo "c. Check User Details"
echo "d. Change User Display name"
echo "e. Delete User"


read -p "Enter your choice: " choice

case $choice in
	a) 
		echo "You have selected option to create a user"
		read -p "Enter a username to create: " username
		cat /etc/passwd | grep -i $username > /dev/null
		if [[ $? -eq 0 ]]
		then
			echo "The user $username already exists!!"
			echo "Below are your user details!"
			echo "$(cat /etc/passwd | grep -i $username)"
		else
			useradd $username
			echo "$username is created!"
		fi
		;;
	b)
	        echo "You have selected option to change a user password"	
	        read -p "Enter your username to change password: " username
		cat /etc/passwd | grep -i $username > /dev/null
		if [[ $? -eq 0 ]]
		then
			passwd $username
		else
			echo "The user $username does not exists, kindly create a user first!!"
		fi
	        ;;
	c)
		echo "You have selected option to check user details"
		read -p "Enter a username to check details: " username
		cat /etc/passwd | grep -i $username > /dev/null
		if [[ $? -eq 0 ]]
		then
			echo "Below are your user details!"
			echo "$(cat /etc/passwd | grep -i $username)"
		else
			echo "The entered user does not exists in the system!"
			echo "The entry is missing in /etc/passwd as shown below"
			echo "$(cat /etc/passwd | grep -i $username)"
		fi
		;;
	d)
		echo "You have selected option to change user display name"
		read -p "Enter a username you wanted to change the its display name: " username
		cat /etc/passwd | grep -i $username > /dev/null
		if [[ $? -eq 0 ]]
		then
			read -p "Enter user's new display name: " displayname
			usermod -c "$displayname" $username
			echo "Printing the details"
			echo "$(cat /etc/passwd | grep -i $username)"
		else
			echo "The user $username does not exists!!"
		fi
		;;
	e)
		echo "You have selected option to delete a user"
		read -p "Enter a username to delete: " username
		cat /etc/passwd | grep -i $username > /dev/null
		if [[ $? -eq 0 ]]
		then
			read -p "Do you want to delete a user's home directory(type'yes' or 'no': )" homedir_status
			if [[ $homedir_status = "yes" ]]
			then
				userdel -r $username
				echo "$username user & user home directory is deleted!"
			else
				userdel $username
				echo "$username user is deleted but user home directory persists under /home!"
			fi
		else
			echo "The user $username does not exists!!"
		fi
		;;
	*) echo "Kindly select valid option!!"
esac
