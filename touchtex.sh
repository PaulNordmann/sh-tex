#!/usr/bin/env sh


#generate filename
if [ $# -eq 0 ]; then
	file=`date +%Y-%m-%d`;
else
	file=$1; 
fi
file=$file'.tex';

#check if exists
if [ -e $file ]; then
	echo 'file '$file' exists'
	exit 1;
fi


#make dummy file
touch $file;


#push content
echo '\documentclass{article}' >> $file;
echo '\usepackage{amsmath, amssymb}' >> $file;
echo '\usepackage[ngerman]{babel}'>> $file;
echo '\usepackage[T1]{fontenc}'>> $file;
echo '\usepackage{lmodern}'>> $file;
echo '\usepackage[utf8]{inputenc}'>> $file;
echo '\n\n%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n\n'>> $file;
echo '\\begin{document}\n\n'>> $file;
echo '\end{document}'>> $file;


