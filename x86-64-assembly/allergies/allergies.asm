section .text
global allergic_to
allergic_to:
    ; rdi, rsi -> rax
    ; init
    xor rax, rax
    mov rcx, rdi ; shl only supports 1, CL, and imm8
    ; find allergy code
    mov rdx, 1
    shl rdx, cl
    ; do we have this allergy?
    test rdx, rsi
    setnz al
    ret

global list
list:
    ; rdi, rsi -> rsi
    ; init
    xor eax, eax
    xor ecx, ecx
.loop:
    cmp rcx, 8
    je .done
    shr rdi, 1
    jnc .skip
    mov [rsi+4+4*rax], ecx
    inc eax
.skip:
    inc ecx
    jmp .loop
.done:
    mov [rsi], eax
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
