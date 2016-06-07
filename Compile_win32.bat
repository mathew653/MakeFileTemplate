@rem all changes local to batch
@setlocal

@set _BUILD_BIN=C:\MinGW\bin
@set _TOOL_TOTAL=0

@set PATH=%_BUILD_BIN%;%PATH%

@if EXIST %_BUILD_BIN%\gcc.exe (
	@echo [check]GCC Found.
	@set /a _TOOL_TOTAL+=1
)
@if EXIST %_BUILD_BIN%\g++.exe (
	@echo [check]G++ Found.
	@set /a _TOOL_TOTAL+=1
)
@if EXIST %_BUILD_BIN%\mingw32-make.exe (
	@echo [check]GNU make found.
	@set /a _TOOL_TOTAL+=1
)

@if NOT EXIST .\objects @mkdir .\objects
@if NOT EXIST .\output @mkdir .\output

@if %_TOOL_TOTAL% EQU 3 (
	@echo [check]Requirements met, building..
	@echo -----------------------------------
	@%_BUILD_BIN%\mingw32-make.exe --makefile=MakeFiles\Win32Make.ini
	@echo [cleanup]Cleaning up.
	@%_BUILD_BIN%\mingw32-make.exe --makefile=MakeFiles\Win32Make.ini clean
	@echo -----------------------------------
	@echo Completed operations.
) else (
	@echo [error]Requirements failed, should atleast have complete MingGW win32 tool chain
)

@set _BUILD_BIN=
@set _TOOL_TOTAL=

@rem changes can be global
@endlocal

@pause > NUL