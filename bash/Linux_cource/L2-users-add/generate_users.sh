#!/bin/bash

for ((i=1;i<=10;i++))
do
        echo "testuser-$i,$(< /dev/urandom tr -dc A-Za-z0-9 | head -c${1:-15};echo;)" >> ./users.txt
done
