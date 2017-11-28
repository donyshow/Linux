#! /bin/bash
##my_users="./users.txt"
##my_groups="./u_groups.txt"

my_users=$1
my_groups=$2
c_groups="./create_groups.sh"

$c_groups

IFS=$'\n'
for var in $(cat $my_users)
do
        adduser -G $(cat $my_groups) -p $(echo $var | cut -f 2 -d , | sha256sum | cut -f 1 -d ' ' ) $(echo $var | cut -f 1 -d ,)
done
