section .text
global is_valid
is_valid:
    ; rdi -> rax
    mov rsi, 10
    xor rdx, rdx
    xor rax, rax
.loop:
    mov bl, [rdi]
    test bl, bl
    jz .fail
    inc rdi
    ; seperator
    cmp bl, '-'
    je .loop
    ; verify?
    cmp rsi, 1
    je .verify
    cmp bl, '0'
    jl .fail
    cmp bl, '9'
    jg .fail
    ; process
    sub bl, '0'
    ; (d1*10 + d2*9 + d3*8 + d4*7 + d5*6 + d6*5 + d7*4 + d8*3 + d9*2 + d10*1) mod 11 == 0
    imul rbx, rsi
    add rax, rbx
    dec rsi
    jmp .loop
.verify:
    xor cx, cx
    mov cl, ':'
    cmp bl, 'X'
    cmove bx, cx
    cmp bl, '0'
    jl .fail
    cmp bl, ':' ; '9' + 1
    jg .fail
    sub bl, '0'
    imul rbx, rsi
    add rax, rbx
    mov rsi, 11
    div rsi
    test rdx, rdx
    jz .success
.fail:
    xor rax, rax
    ret
.success:
    ; not a valid isbn if this isn't the end
    cmp byte [rdi], 0
    jnz .fail
    mov rax, 1
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
