section .text
global egg_count
egg_count:
    ; rdi -> rax
    xor rax, rax
.loop:
    test rdi, rdi
    je .done
    shr rdi, 1
    jnc .loop
    inc rax
    jmp .loop
.done:
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
