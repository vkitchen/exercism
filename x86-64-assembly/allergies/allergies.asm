default rel

section .rodata
allergies: db 1, 2, 4, 8, 16, 32, 64, 128

section .text
global allergic_to
allergic_to:
    ; rdi, rsi -> rax
    ; init
    xor rax, rax
    ; find allergy code
    lea rdx, [allergies]
    movzx edx, byte [rdx+rdi]
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
    mov rdx, 1
.loop:
    cmp rdx, 1 << 8
    je .done
    test rdi, rdx
    jnz .save
    jmp .shift
.save:
    mov [rsi+4+4*rax], ecx
    inc eax
.shift:
    shl rdx, 1
    inc ecx
    jmp .loop
.done:
    mov [rsi], eax
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
