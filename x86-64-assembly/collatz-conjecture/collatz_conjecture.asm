section .text
global steps
steps:
    ; rdi -> rax
    ; check in valid range
    ; int param so compare as 32bit
    cmp edi, 1
    jl .error
    ; init
    mov rsi, 3
    xor rax, rax
.loop:
    cmp rdi, 1
    je .done
    test rdi, 1
    jnz .odd
; .even:
    inc rax
    shr rdi, 1
    jmp .loop
.odd:
    inc rax
    imul rdi, rsi
    inc rdi
    jmp .loop
.error:
    mov rax, -1
.done:
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
