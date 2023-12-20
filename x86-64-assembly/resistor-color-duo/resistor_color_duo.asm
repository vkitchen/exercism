default rel

section .rodata
black: db "black", 0
brown: db "brown", 0
red: db "red", 0
orange: db "orange", 0
yellow: db "yellow", 0
green: db "green", 0
blue: db "blue", 0
violet: db "violet", 0
grey: db "grey", 0
white: db "white", 0

section .data
color_pointers: dq black, brown, red, orange, yellow, green, blue, violet, grey, white

section .text
strcmp:
    ; rdx, r8 -> rax
.loop:
    mov al, [rdx]
    cmp [r8], al
    jne .neq
    test al, al
    je .end
    inc rdx
    inc r8
    jmp .loop
.end:
    mov rax, 1
    ret
.neq:
    mov rax, 0
    ret

value_:
    ; rdi -> rax
    lea r9, [color_pointers]
    mov rcx, -1
.loop:
    inc rcx
    ; bounds check
    cmp rcx, 10
    je .fail

    mov rdx, rdi
    mov r8, [r9 + 8*rcx]
    call strcmp
    test rax, rax
    je .loop
    mov rax, rcx
    ret
.fail:
    mov rax, -1
    ret

global value
value:
    ; rdi, rsi -> rax
    call value_
    cmp rax, -1
    je .fail
    ; prepare next call and free up rsi register
    mov rdi, rsi
    mov rsi, 10
    imul rsi
    mov rsi, rax
    call value_
    add rax, rsi
    ret
.fail:
    mov rax, -1
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
