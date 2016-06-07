#!/bin/sh
echo "[check]Checking required folders."
if [ ! -d ./objects ]
then 
	mkdir ./objects 
fi
if [ ! -d ./output ]
then 
	mkdir ./output  
fi

fnc_dpkg_query_exist() {
	echo "[check]Checking package $1"
	PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $1|grep "install ok installed")
	if [ -z "$PKG_OK" ]
	then
		echo "[check]Missing package $1!"
		exit 1
	fi
} 

if [ -e /usr/bin/dpkg-query ]
then
	echo "[check]Found dpkg-query will do inventory check." 
	
	fnc_dpkg_query_exist gcc
	fnc_dpkg_query_exist g++
	fnc_dpkg_query_exist make
#	fnc_dpkg_query_exist mingw32
	fnc_dpkg_query_exist mingw-w64
fi
make --makefile=MakeFiles/makefile.linux_crossmingw32
echo "[cleanup]Cleaning up."
make --makefile=MakeFiles/makefile.linux_crossmingw32 clean
