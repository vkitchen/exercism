section .text
global square
square:
    ; rdi -> rax
    xor rax, rax
    cmp rdi, 0
    jle .return
    cmp rdi, 64
    jg .return
    mov cl, dil
    dec cl
    mov rax, 1
    shl rax, cl
.return:
    ret

global total
total:
    ; -> rax
    mov rax, 0xFFFFFFFFFFFFFFFF
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
