# USERNAME being a environment variable declared by the docker-image user
if test ! -z $USERNAME
  then base_username=$USERNAME
  else base_username="default_"
fi

user_pool_file="./user_pool"
declare -i count
count=0
if test ! -e ./user_pool
then 
  touch ./user_pool
  echo "$base_username$count" >> $user_pool_file
fi


username=${base_username}
while grep "${base_username}${count}" $user_pool_file
do 
  count=$count+1
  username="${base_username}${count}"
done
echo "$username" >> $user_pool_file

