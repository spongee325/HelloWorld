.386
.model  flat, stdcall
option  casemap:none
include    \masm32\include\windows.inc
include    \masm32\include\masm32.inc
include    \masm32\include\kernel32.inc
include    \masm32\include\user32.inc
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib
includelib \masm32\lib\windows.lib

.data
	HelloWorld db "Hello, World!", 0
.code
start:
	invoke MessageBox, NULL, addr HelloWorld, MB_OK, MB_ICONINFORMATION
	invoke ExitProcess, 0
end start
