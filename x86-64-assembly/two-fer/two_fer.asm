default rel

section .rodata
fer: db "One for ", 0
you: db "you", 0
me: db ", one for me.", 0

section .text
global two_fer

%macro strcpy 2
%%loop:
    mov al, [%2]
    mov byte [%1], al
    inc %1
    inc %2
    cmp byte [%2], 0
    jne %%loop
%endmacro

two_fer:
    ; rdi, rsi
    lea r8, [fer]
    strcpy rsi, r8
    cmp rdi, 0
    je .you
    strcpy rsi, rdi
    jmp .me
.you:
    lea r8, [you]
    strcpy rsi, r8
.me:
    lea r8, [me]
    strcpy rsi, r8
    mov byte [rsi], 0
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
