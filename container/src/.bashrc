
# users pool is not needed to be persistant as users will be deleted when disconnecting
# problem : each instance of a shell does not share vars so i will need a file
if test ! -v $USER_POOL
  then USER_POOL=()
fi

if test ! -a ./user_pool
  then touch ./user_pool
fi
user_pool_file="./user_pool"

# USERNAME being a environment variable declared by the docker-image user
base_username="default"
if test -v $USERNAME
  then base_username=$USERNAME
  else base_username="default"
fi

username=""
declare -i count
count=1
echo "${base_username}_${count}"
echo "$base_username"
while grep "${base_username}_${count}" $user_pool_file
  do username="${base_username}_${count}"
  count=$count+1
  echo $username
done
echo "$username" >> $user_pool_file

cat $user_pool_file
