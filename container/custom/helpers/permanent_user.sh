useradd $username
# sed -i -e "s/\/bin\/sh/\/usr\/bin\/bash/" /etc/passwd
# mkdir "/home/$username"
# chown -R $username:$username "/home/$username/"
# chmod -R 750 "/home/$username"
# echo "$username:$user_pass" | sudo chpasswd

# To make the newly created user usable you can uncomment the lines after the useradd command.
# Line 2 : Setup the shell the user will be using after login.
# Line 3 : Create the user's home directory
# Line 4 : Give ownership of the home/{$username} to $username.
# Line 5 : Setup permissions in the /home/{$username}. 
#          7 => owner : read,write,execute
#          5 => group : read,write
#          0 => others : nothing
# Line 6 : Set user's password to login.

# PS : You may want to set a user without it being able to connect for permissions reason.
