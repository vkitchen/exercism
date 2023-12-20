section .text
global leap_year
leap_year:
    ; param in rdi
    ; edx:eax used for division
    mov rax, rdi
    mov edx, 0
    ; use ebx as divisor
    mov ebx, 4
    div ebx
    ; remainder in edx
    cmp edx, 0
    je div_by_4
    ; return false in rax
    mov rax, 0
    ret
div_by_4:
    mov rax, rdi
    mov edx, 0
    mov ebx, 100
    div ebx
    cmp edx, 0
    je div_by_100
    ; return true in rax
    mov rax, 1
    ret
div_by_100:
    mov rax, rdi
    mov edx, 0
    mov ebx, 400
    div ebx
    cmp edx, 0
    je div_by_400
    ; return true in rax
    mov rax, 0
    ret
div_by_400:
    ; return true in rax
    mov rax, 1
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
