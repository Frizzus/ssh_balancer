#!/usr/bin/bash

# --new user to user pool--
# USERNAME being a environment variable declared by the docker-image user
if test ! -z $USERNAME
  then base_username=$USERNAME
  else base_username="default_"
fi

user_pool_file="./user_pool"
count=0
if test ! -e ./user_pool
then 
  touch ./user_pool
  echo "$base_username$count" >> $user_pool_file
fi


username=${base_username}
while grep "${base_username}${count}" $user_pool_file
do 
  count=`expr $count + 1`
  username="${base_username}${count}"
done
echo "$username" >> $user_pool_file
pass="test"
user_pass="test2"

echo $pass | sudo -S useradd $username
echo $pass | sudo -S sed -i -e "s/\/bin\/sh/\/usr\/bin\/bash/" /etc/passwd
echo $pass | sudo -S mkdir "/home/$username"
echo $pass | sudo -S chown -R $username:$username "/home/$username/"
echo $pass | sudo -S chmod -R 750 "/home/$username"
echo "$username:$user_pass" | sudo chpasswd
sudo -u $username -i
# ssh $username@localhost
