section .text
global to_rna
to_rna:
    ; rdi, rsi -> rsi
.loop:
    cmp byte [rdi], 0
    je .done
    cmp byte [rdi], 'G'
    je .g
    cmp byte [rdi], 'C'
    je .c
    cmp byte [rdi], 'T'
    je .t
    cmp byte [rdi], 'A'
    je .a
    jmp .done
.g:
    mov byte [rsi], 'C'
    inc rdi
    inc rsi
    jmp .loop
.c:
    mov byte [rsi], 'G'
    inc rdi
    inc rsi
    jmp .loop
.t:
    mov byte [rsi], 'A'
    inc rdi
    inc rsi
    jmp .loop
.a:
    mov byte [rsi], 'U'
    inc rdi
    inc rsi
    jmp .loop
.done:
    mov byte [rsi], 0
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
