section .text
global square_root
square_root:
    push rdi
    fild qword [rsp]
    fsqrt
    fistp qword [rsp]
    pop rax
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
