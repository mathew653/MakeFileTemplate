#Resulting executable name(extension added in platform make files).
_AppName = HelloWorld

#Extra preprocessor defs.
#CFLAGS += -I../extra_includes

#Folder lists

#For now no objects are in the OS folder.
#_FOLDERS = OS
_FOLDERS  = 

#File lists
_OBJECTS  = main.o 
#_OBJECTS += foo.o bar.o

#Librarys
#-lexample -labc

#Building under mingw on windows.
ifeq ($(OS_TYPE),WIN)
       	_LIBS  = 
endif

#Building under mingw cross compiler on linux.
ifeq ($(OS_TYPE),WINE)
       	_LIBS  =
endif

#Building under normal gcc compiler.
ifeq ($(OS_TYPE),LINUX)
        _LIBS  =
endif

#Demostration of adding future platforms.

#ifeq ($(OS_TYPE),OSX)
#endif

#ifeq ($(OS_TYPE),ANDROID)
#endif

