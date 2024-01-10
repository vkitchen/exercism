section .text
global is_isogram
is_isogram:
    ; rdi -> rax
    xor rsi, rsi
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
    test rsi, r8
    jnz .fail
    or rsi, r8
.skip:
    inc rdi
    jmp .loop
.done:
    mov rax, 1
    ret
.fail:
    xor rax, rax
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
