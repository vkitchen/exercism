section .text
global nucleotide_counts
nucleotide_counts:
    ; rdi, rsi -> rsi
    mov qword [rsi], 0
    mov qword [rsi+8], 0
    mov qword [rsi+16], 0
    mov qword [rsi+24], 0
.loop:
    cmp byte [rdi], 0
    je .done
    cmp byte [rdi], 'A'
    je .a
    cmp byte [rdi], 'C'
    je .c
    cmp byte [rdi], 'G'
    je .g
    cmp byte [rdi], 'T'
    je .t
    jmp .error
.a:
    inc qword [rsi]
    inc rdi
    jmp .loop
.c:
    inc qword [rsi+8]
    inc rdi
    jmp .loop
.g:
    inc qword [rsi+16]
    inc rdi
    jmp .loop
.t:
    inc qword [rsi+24]
    inc rdi
    jmp .loop
.done:
    ret
.error:
    mov qword [rsi], -1
    mov qword [rsi+8], -1
    mov qword [rsi+16], -1
    mov qword [rsi+24], -1
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
