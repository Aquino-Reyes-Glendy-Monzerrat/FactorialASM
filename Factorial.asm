;Simple program to calculate the factorial of a number
;Yo Mero
;Abril 03 2025
; +++++++++++++++++++++++++++++++
; Some basic data declarations

section .data
;--------------------------------
; Define Constants
EXIT_SUCCESS equ 0 ; succesfull operation
SYS_exit equ 60    ; call code for terminate

;  --------------------------------
; Define vars


num dd 1    ;* Empieza en 1

fac dd 10    ;* numero a calcular su factorial  10!=3´628,800

resul dd 0  ;* resultado 



; +++++++++++++++++++++++++++++++++++++++
; Code section

section .text
global _start

_start:


    ;push rax
    ;push rbx

    mov eax, dword[num]   ;* eax=1

    mov ebx, dword[fac]   ;* ebx=10

    ciclo:

        mul ebx ;* eax=1*10  eax=10

        dec ebx      ;* ebx =10 - 1 = 9

        cmp ebx,1    ;* comparamos si ebx=1      9=1 no

        jg ciclo     ;* si ebx(9) > 1, entra de nuevo al ciclo

        mov dword[resul],eax  ;* guardo el resultado en resul
                           

        ;pop rbx
        ;pop rax   


; +++++++++++++++++++++++++++++++++++++++++++
; Done, terminate program.

last:
    mov rax, SYS_exit     ; Call code for exit
    mov rdi, EXIT_SUCCESS ; Exit program with success
