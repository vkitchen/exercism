section .text
global is_paired
is_paired:
    ; rdi -> rax
    ; assume true until proven false
    mov rax, 1
.loop:
    mov bl, [rdi]
    cmp bl, 0
    je .matched
    inc rdi
    cmp bl, ']'
    je .done
    cmp bl, '}'
    je .done
    cmp bl, ')'
    je .done
    cmp bl, '['
    je .square
    cmp bl, '{'
    je .curly
    cmp bl, '('
    je .paren
    jmp .loop
.square:
    call square
    jmp .loop
.curly:
    call curly
    jmp .loop
.paren:
    call paren
    jmp .loop
.done:
    xor rax, rax
.matched:
    ret

square:
.loop:
    mov bl, [rdi]
    cmp bl, 0
    je .done
    inc rdi
    cmp bl, ']'
    je .matched
    cmp bl, '}'
    je .done
    cmp bl, ')'
    je .done
    cmp bl, '['
    je .square
    cmp bl, '{'
    je .curly
    cmp bl, '('
    je .paren
    jmp .loop
.square:
    call square
    jmp .loop
.curly:
    call curly
    jmp .loop
.paren:
    call paren
    jmp .loop
.done:
    xor rax, rax
.matched:
    ret

curly:
.loop:
    mov bl, [rdi]
    cmp bl, 0
    je .done
    inc rdi
    cmp bl, ']'
    je .done
    cmp bl, '}'
    je .matched
    cmp bl, ')'
    je .done
    cmp bl, '['
    je .square
    cmp bl, '{'
    je .curly
    cmp bl, '('
    je .paren
    jmp .loop
.square:
    call square
    jmp .loop
.curly:
    call curly
    jmp .loop
.paren:
    call paren
    jmp .loop
.done:
    xor rax, rax
.matched:
    ret

paren:
.loop:
    mov bl, [rdi]
    cmp bl, 0
    je .done
    inc rdi
    cmp bl, ']'
    je .done
    cmp bl, '}'
    je .done
    cmp bl, ')'
    je .matched
    cmp bl, '['
    je .square
    cmp bl, '{'
    je .curly
    cmp bl, '('
    je .paren
    jmp .loop
.square:
    call square
    jmp .loop
.curly:
    call curly
    jmp .loop
.paren:
    call paren
    jmp .loop
.done:
    xor rax, rax
.matched:
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
