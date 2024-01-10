section .text
global is_pangram
is_pangram:
    ; rdi -> rax
    xor rsi, rsi
    xor rax, rax
.loop:
    mov cl, [rdi]
    test cl, cl
    jz .done
; lowercase?
    cmp cl, 'a'
    jl .uppercased
    sub cl, 32
.uppercased:
; not a letter?
    cmp cl, 'A'
    jl .skip
    cmp cl, 'Z'
    jg .skip
; only letters left now
    sub cl, 'A'
    mov r8, 1
    shl r8, cl
    or rsi, r8
.skip:
    inc rdi
    jmp .loop
.done:
    cmp esi, (1 << 26) - 1
    jne .false
    mov rax, 1
.false:
    ret


%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
