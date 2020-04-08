#! /bin/bash
# this script removes spaces on file and repo. 
rec(){
	dir="$1/*"
	for a in ${dir} ; do
		b=$(echo $a | sed -e 's/[[:blank:]]/_/g');
		
	   	if [ -e "$b" ];then
			echo "">/dev/null;
		else
			mv "$a" "$b";
		fi
		if  [  -d $b ] ;  then
			rec $b
		fi
	done
}

rec "$1"	
