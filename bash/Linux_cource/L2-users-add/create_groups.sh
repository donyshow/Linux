#!/bin/bash

for ((i=1;i<=10;i++)) do groupadd $(echo "testGroup-$i"); done
