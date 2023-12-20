default rel

section .rodata
black: db "black", 0
brown: db "brown", 0
red: db "red", 0
orange: db "orange", 0
yellow: db "yellow", 0
green: db "green", 0
blue: db "blue", 0
violet: db "violet", 0
grey: db "grey", 0
white: db "white", 0

section .data
color_pointers: dq black, brown, red, orange, yellow, green, blue, violet, grey, white

section .text
strcmp:
    ; rdi, rsi -> rax
.loop:
    mov al, [rsi]
    cmp [rdi], al
    jne .neq
    test al, al
    je .eq
    inc rdi
    inc rsi
    jmp .loop
.eq:
    mov rax, 1
    ret
.neq:
    mov rax, 0
    ret

; N.B. doesn't bounds check
global color_code
color_code:
    ; rdi -> rax
    mov rcx, -1
.loop:
    inc rcx
    lea r8, [color_pointers]
    mov rsi, [r8 + 8*rcx]
    call strcmp
    test rax, rax
    je .loop
    mov rax, rcx
    ret

global colors
colors:
    lea rax, [color_pointers]
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
