.386
.model flat, stdcall
    option casemap:none
    include \masm32\include\windows.inc
    include \masm32\include\kernel32.inc
    includelib \masm32\lib\kernel32.lib 
    include \masm32\include\user32.inc
    includelib \masm32\lib\user32.lib
    includelib \masm32\lib\masm32.lib
    include \masm32\include\masm32.inc
.data
    msg db "vidya sagar panjri",0
    len equ $ -msg
.code
start:
    mov	edx,len     ;message length
    mov	ecx,msg     ;message to write
    mov	ebx,1       ;file descriptor (stdout)
    mov	eax,4       ;system call number (sys_write)
    int	0x80        ;call kernel
	
    mov	eax,1       ;system call number (sys_exit)
    int	0x80        ;call kernel
end start 