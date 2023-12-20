default rel

section .rodata
earth:   dd 31557600.0
conversions: dd 0.2408467, 0.61519726, 1.0, 1.8808158, 11.862615, 29.447498, 84.016846, 164.79132

section .text
global age
age:
    ; rdi, rsi -> xmm0
    ; calculate earth age first
    cvtsi2ss xmm0, rsi
    divss xmm0, [earth]
    ; convert to age on other planet
    lea rsi, [conversions]
    divss xmm0, [rsi+4*rdi]
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
