section .text

%macro load_triangle 0
    movsd xmm0, [rsp+8]
    movsd xmm1, [rsp+16]
    movsd xmm2, [rsp+24]
%endmacro

%macro is_triangle 0
    pxor xmm3, xmm3
    comisd xmm0, xmm3
    je .fail
    comisd xmm1, xmm3
    je .fail
    comisd xmm2, xmm3
    je .fail
    movsd xmm3, xmm0
    addsd xmm3, xmm1
    comisd xmm3, xmm2
    jb .fail
    movsd xmm3, xmm1
    addsd xmm3, xmm2
    comisd xmm3, xmm0
    jb .fail
    movsd xmm3, xmm2
    addsd xmm3, xmm0
    comisd xmm3, xmm1
    jb .fail
%endmacro

global is_equilateral
is_equilateral:
    load_triangle
    is_triangle
    comisd xmm0, xmm1
    jne .fail
    comisd xmm1, xmm2
    jne .fail
    mov rax, 1
.fail:
    ret

global is_isosceles
is_isosceles:
    load_triangle
    is_triangle
    comisd xmm0, xmm1
    je .success
    comisd xmm1, xmm2
    je .success
    comisd xmm2, xmm0
    je .success
    jmp .fail
.success:
    mov rax, 1
.fail:
    ret

global is_scalene
is_scalene:
    load_triangle
    is_triangle
    comisd xmm0, xmm1
    je .fail
    comisd xmm1, xmm2
    je .fail
    comisd xmm2, xmm0
    je .fail
    mov rax, 1
.fail:
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
