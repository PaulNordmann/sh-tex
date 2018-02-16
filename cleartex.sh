#!/usr/bin/env sh

if [ $# -eq 0 ]; then
	dir='.';
elif [ -d $1 ]; then
	dir=$1
else
	echo 'Verzeichnis als Parameter'
	exit 0;
fi

list=`ls $dir/*.tex`; 

for tex in $list 
do
	file=${tex%\.tex};
	rm -f $file.log;
	rm -f $file.tex.backup;
	rm -f $file.aux;
	rm -f $file.out;
	rm -f $file.toc;
done;
