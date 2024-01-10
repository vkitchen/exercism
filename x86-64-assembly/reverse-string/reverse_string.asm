section .text
global reverse
reverse:
    ; rdi -> rdi
    mov rsi, rdi
.find_terminator:
    cmp byte [rsi], 0
    je .begin
    inc rsi
    jmp .find_terminator
.begin:
    dec rsi
    cmp rsi, rdi
    jle .done
    mov ah, [rdi]
    mov al, [rsi]
    mov [rdi], al
    mov [rsi], ah
    inc rdi
    jmp .begin
.done:
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
