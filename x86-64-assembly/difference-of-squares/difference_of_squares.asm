section .text
global square_of_sum
square_of_sum:
    ; rdi -> rax
    xor rax, rax
.loop:
    add rax, rdi
    dec rdi
    test rdi, rdi
    jnz .loop
    imul rax, rax
    ret

global sum_of_squares
sum_of_squares:
    ; rdi -> rax
    xor rax, rax
.loop:
    mov rsi, rdi
    imul rsi, rsi
    add rax, rsi
    dec rdi
    test rdi, rdi
    jnz .loop
    ret

global difference_of_squares
difference_of_squares:
    ; rdi -> rax
    mov rsi, rdi ; preserve rdi
    call square_of_sum
    mov rdx, rax ; preserve rax
    mov rdi, rsi ; restore rdi
    call sum_of_squares
    sub rdx, rax ; difference
    mov rax, rdx
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
