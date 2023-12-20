section .text
global can_create
can_create:
    ; rdi, rsi -> rax
    cmp rdi, 0
    jb .invalid
    cmp rdi, 8
    jae .invalid
    cmp rsi, 0
    jb .invalid
    cmp rsi, 8
    jae .invalid
    mov rax, 1
    ret
.invalid:
    xor rax, rax
    ret


global can_attack
can_attack:
    ; rdi, rsi, rdx, rcx -> rax
    ; row
    sub rdi, rdx
    jz .can_attack
    ; column
    sub rsi, rcx
    jz .can_attack
    ; diagonal
    cmp rdi, rsi
    je .can_attack
    ; diagonal other direction
    neg rdi
    cmp rdi, rsi
    je .can_attack
    ; fall through
    xor rax, rax
    ret
.can_attack:
    mov rax, 1
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
