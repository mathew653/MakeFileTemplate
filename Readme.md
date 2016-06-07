MakeFileTemplate version 3.1  

This is the current iteration of the makefile system I use for maintaining projects I have been developing it currently targets the following platforms:  
Win32  
Wine  
Linux(Using .deb packages)  

The goal of this project is to provide a simple means to create a project and compile it across platforms I work with frequently.  
For those looking to use this as a template for their project under windows you might need to change your path in the Compile_win32.bat to match your mingW64 folder.  

Requirements for each platform:  
Linux -  
Most components are apt-get able if you are using debian jessie.  
gcc  
g++  
make  

Wine -  
As above most are apt-get able if you are using debian jessie.  
gcc  
g++  
make  
mingw-w64  

Win32 -  
A quick search for mingW64 should provide you with the installer needed to get up and running.  

License :  
Use this how you want but you may not hold me responsible in any way for anything you do with these scripts and/or its resulting effects.
