section .text
global rotate
rotate:
    ; rdi, rsi, rdx -> rdx
.loop:
    mov bl, [rdi]
    cmp bl, 'A'
    jl .store
    cmp bl, 'Z'
    jle .upper
    cmp bl, 'a'
    jl .store
    cmp bl, 'z'
    jg .store
; .lower:
    add bl, sil
    ; detect overflow
    cmp bl, 'a'
    jl .sub
    cmp bl, 'z'
    jg .sub
    jmp .store
.upper:
    add bl, sil
    cmp bl, 'Z'
    jle .store
.sub:
    sub bl, 26
.store:
    mov [rdx], bl
    inc rdx
    cmp byte [rdi], 0
    je .done
    inc rdi
    jmp .loop
.done:
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
