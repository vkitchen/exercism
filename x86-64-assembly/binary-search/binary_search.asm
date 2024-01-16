section .text
global find
find:
    ; array, length, needle
    ; rdi, rsi, rdx -> rax
    xor r8, r8 ; L
    dec rsi ; R
.loop:
    ; while L <= R
    cmp r8, rsi
    jg .not_found

    ; M := floor((L + R) / 2)
    mov rax, r8
    add rax, rsi
    shr rax, 1

    cmp [rdi + rax * 4], edx
    ; if A[m] < T
    jl .left
    ; else if A[m] > T
    jg .right
    ; else
    jmp .found
.left:
    inc r8
    jmp .loop
.right:
    dec rsi
    jmp .loop

.not_found:
    mov rax, -1
.found:
    ret


; find:
;     ; rdi, rsi, rdx -> rax
;     xor rax, rax
; .loop:
;     cmp rsi, rax
;     je .not_found
;     cmp [rdi + rax * 4], edx ; int
;     je .found
;     inc rax
;     jmp .loop
; .not_found:
;     mov rax, -1
; .found:
;     ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
