section .text
global distance
distance:
    ; rdi, rsi -> rax
    xor rax, rax ; count
.loop:
    ; different lengths?
    cmp byte [rdi], 0
    sete bl
    cmp byte [rsi], 0
    sete cl
    xor bl, cl
    jnz .error

    ; let us manipulate the pointers freely
    mov bl, [rdi]
    mov cl, [rsi]

    ; eof?
    test bl, bl
    je .done

    ; increment pointers
    inc rdi
    inc rsi

    ; equal?
    cmp bl, cl

    ; then loop
    je .loop
    ; else count and loop
    inc rax
    jmp .loop
.done:
    ret
.error:
    mov rax, -1
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
