#!/usr/bin/bash

# from this file you can :
# -create new user, files, permission ...
# everything int the /home/{user} directory will be deleted upon disconnection.
# You have access to some variables
# - $USERNAME : the base username of the temporary user
# - $username : the complete username of the temporary user
# - $user_pass : the password of the temporary user (randomly generated)

. ./user_script_files/cyber_challenge_user.sh

