#!/bin/bash

if [ $1 ] ; then
    var1=$1
	echo "1st argument is assigned as : "$var1
else
    echo "1st argument is not assigned."
fi

if [ $2 ] ; then
    var2=$2
	echo "2nd argument is assigned as : "$var2
else
    echo "2nd argument is not assigned."
fi

if [ $1 ] && [ $2 ] ; then
    tree content/$var1
	echo 'hugo new content/'$var1'/'$var2'_''`dm`.md'

	echo "#!/bin/bash" > 03_hugo_new.sh
	echo "" >> 03_hugo_new.sh
	echo 'hugo new content/'$var1'/'$var2'_''`dm`.md' >> 03_hugo_new.sh
fi

unset var1
unset var2
