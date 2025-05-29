#!/bin/bash

var1=''
var2=''

if [ $1 ] ; then
    var1=$1
	echo "1st argument is assigned as : "$var1
	tree content/$var1 | tail -20
	echo ''
else
    echo "1st argument is not assigned."
fi

if [ $2 ] ; then
    if [ $1 == "post" ] ; then
        var2=$2
    	echo "2nd argument is assigned as : "$var2
    	var2="${var2}_`date +'%Y%m%d%H%M'`/index.md"
    	echo "2nd argument is assigned as : "$var2
    else 
        var2=$2
    	echo "2nd argument is assigned as : "$var2
    	var2="${var2}_`date +'%Y%m%d%H%M'`.md"
    	echo "2nd argument is assigned as : "$var2
    fi
else
    echo "2nd argument is not assigned."
fi

if [ $1 ] && [ $2 ] ; then
	echo 'hugo new content/'$var1'/'$var2''
	hugo new content/$var1/$var2

	echo 'after tree'
	tree content/$var1 | tail -20
fi

unset var1
unset var2
