	.file	"triangle_test.c"
	.text
	.globl	setUp
	.type	setUp, @function
setUp:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	setUp, .-setUp
	.globl	tearDown
	.type	tearDown, @function
tearDown:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	tearDown, .-tearDown
	.section	.rodata
.LC1:
	.string	" Expected TRUE Was FALSE"
	.text
	.globl	test_equilateral_triangle_all_sides_are_equal
	.type	test_equilateral_triangle_all_sides_are_equal, @function
test_equilateral_triangle_all_sides_are_equal:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_equilateral@PLT
	addq	$32, %rsp
	testb	%al, %al
	jne	.L5
	movl	$24, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L5:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	test_equilateral_triangle_all_sides_are_equal, .-test_equilateral_triangle_all_sides_are_equal
	.section	.rodata
.LC3:
	.string	" Expected FALSE Was TRUE"
	.text
	.globl	test_equilateral_triangle_any_side_is_unequal
	.type	test_equilateral_triangle_any_side_is_unequal, @function
test_equilateral_triangle_any_side_is_unequal:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_equilateral@PLT
	addq	$32, %rsp
	xorl	$1, %eax
	testb	%al, %al
	jne	.L8
	movl	$29, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L8:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	test_equilateral_triangle_any_side_is_unequal, .-test_equilateral_triangle_any_side_is_unequal
	.globl	test_equilateral_triangle_no_sides_are_equal
	.type	test_equilateral_triangle_no_sides_are_equal, @function
test_equilateral_triangle_no_sides_are_equal:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC6(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_equilateral@PLT
	addq	$32, %rsp
	xorl	$1, %eax
	testb	%al, %al
	jne	.L11
	movl	$34, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L11:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	test_equilateral_triangle_no_sides_are_equal, .-test_equilateral_triangle_no_sides_are_equal
	.globl	test_equilateral_triangle_all_zero_sides_is_not_a_triangle
	.type	test_equilateral_triangle_all_zero_sides_is_not_a_triangle, @function
test_equilateral_triangle_all_zero_sides_is_not_a_triangle:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_equilateral@PLT
	addq	$32, %rsp
	xorl	$1, %eax
	testb	%al, %al
	jne	.L14
	movl	$39, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L14:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	test_equilateral_triangle_all_zero_sides_is_not_a_triangle, .-test_equilateral_triangle_all_zero_sides_is_not_a_triangle
	.globl	test_equilateral_triangle_sides_may_be_floats
	.type	test_equilateral_triangle_sides_may_be_floats, @function
test_equilateral_triangle_sides_may_be_floats:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movsd	.LC8(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC8(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC8(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_equilateral@PLT
	addq	$32, %rsp
	testb	%al, %al
	jne	.L17
	movl	$44, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L17:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	test_equilateral_triangle_sides_may_be_floats, .-test_equilateral_triangle_sides_may_be_floats
	.globl	test_isosceles_triangle_last_two_sides_are_equal
	.type	test_isosceles_triangle_last_two_sides_are_equal, @function
test_isosceles_triangle_last_two_sides_are_equal:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$48, %esi
	movl	$0, %edi
	call	UnityIgnore@PLT
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_isosceles@PLT
	addq	$32, %rsp
	testb	%al, %al
	jne	.L20
	movl	$50, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L20:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	test_isosceles_triangle_last_two_sides_are_equal, .-test_isosceles_triangle_last_two_sides_are_equal
	.globl	test_isosceles_triangle_first_two_sides_are_equal
	.type	test_isosceles_triangle_first_two_sides_are_equal, @function
test_isosceles_triangle_first_two_sides_are_equal:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$54, %esi
	movl	$0, %edi
	call	UnityIgnore@PLT
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_isosceles@PLT
	addq	$32, %rsp
	testb	%al, %al
	jne	.L23
	movl	$56, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L23:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	test_isosceles_triangle_first_two_sides_are_equal, .-test_isosceles_triangle_first_two_sides_are_equal
	.globl	test_isosceles_triangle_first_and_last_sides_are_equal
	.type	test_isosceles_triangle_first_and_last_sides_are_equal, @function
test_isosceles_triangle_first_and_last_sides_are_equal:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$60, %esi
	movl	$0, %edi
	call	UnityIgnore@PLT
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_isosceles@PLT
	addq	$32, %rsp
	testb	%al, %al
	jne	.L26
	movl	$62, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L26:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	test_isosceles_triangle_first_and_last_sides_are_equal, .-test_isosceles_triangle_first_and_last_sides_are_equal
	.globl	test_isosceles_triangle_equilateral_triangles_are_also_isosceles
	.type	test_isosceles_triangle_equilateral_triangles_are_also_isosceles, @function
test_isosceles_triangle_equilateral_triangles_are_also_isosceles:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$66, %esi
	movl	$0, %edi
	call	UnityIgnore@PLT
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_isosceles@PLT
	addq	$32, %rsp
	testb	%al, %al
	jne	.L29
	movl	$68, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L29:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	test_isosceles_triangle_equilateral_triangles_are_also_isosceles, .-test_isosceles_triangle_equilateral_triangles_are_also_isosceles
	.globl	test_isosceles_triangle_no_sides_are_equal
	.type	test_isosceles_triangle_no_sides_are_equal, @function
test_isosceles_triangle_no_sides_are_equal:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$72, %esi
	movl	$0, %edi
	call	UnityIgnore@PLT
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_isosceles@PLT
	addq	$32, %rsp
	xorl	$1, %eax
	testb	%al, %al
	jne	.L32
	movl	$74, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L32:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	test_isosceles_triangle_no_sides_are_equal, .-test_isosceles_triangle_no_sides_are_equal
	.globl	test_isosceles_triangle_first_triangle_inequality_violation
	.type	test_isosceles_triangle_first_triangle_inequality_violation, @function
test_isosceles_triangle_first_triangle_inequality_violation:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$78, %esi
	movl	$0, %edi
	call	UnityIgnore@PLT
	movsd	.LC9(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC9(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_isosceles@PLT
	addq	$32, %rsp
	xorl	$1, %eax
	testb	%al, %al
	jne	.L35
	movl	$80, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L35:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	test_isosceles_triangle_first_triangle_inequality_violation, .-test_isosceles_triangle_first_triangle_inequality_violation
	.globl	test_isosceles_triangle_second_triangle_inequality_violation
	.type	test_isosceles_triangle_second_triangle_inequality_violation, @function
test_isosceles_triangle_second_triangle_inequality_violation:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$84, %esi
	movl	$0, %edi
	call	UnityIgnore@PLT
	movsd	.LC9(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC9(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_isosceles@PLT
	addq	$32, %rsp
	xorl	$1, %eax
	testb	%al, %al
	jne	.L38
	movl	$86, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L38:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	test_isosceles_triangle_second_triangle_inequality_violation, .-test_isosceles_triangle_second_triangle_inequality_violation
	.globl	test_isosceles_triangle_third_triangle_inequality_violation
	.type	test_isosceles_triangle_third_triangle_inequality_violation, @function
test_isosceles_triangle_third_triangle_inequality_violation:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$90, %esi
	movl	$0, %edi
	call	UnityIgnore@PLT
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC9(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC9(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_isosceles@PLT
	addq	$32, %rsp
	xorl	$1, %eax
	testb	%al, %al
	jne	.L41
	movl	$92, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L41:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	test_isosceles_triangle_third_triangle_inequality_violation, .-test_isosceles_triangle_third_triangle_inequality_violation
	.globl	test_isosceles_triangle_sides_may_be_floats
	.type	test_isosceles_triangle_sides_may_be_floats, @function
test_isosceles_triangle_sides_may_be_floats:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$96, %esi
	movl	$0, %edi
	call	UnityIgnore@PLT
	movsd	.LC8(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC10(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC8(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_isosceles@PLT
	addq	$32, %rsp
	testb	%al, %al
	jne	.L44
	movl	$98, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L44:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	test_isosceles_triangle_sides_may_be_floats, .-test_isosceles_triangle_sides_may_be_floats
	.globl	test_scalene_triangle_no_sides_are_equal
	.type	test_scalene_triangle_no_sides_are_equal, @function
test_scalene_triangle_no_sides_are_equal:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$102, %esi
	movl	$0, %edi
	call	UnityIgnore@PLT
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC6(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_scalene@PLT
	addq	$32, %rsp
	testb	%al, %al
	jne	.L47
	movl	$104, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L47:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	test_scalene_triangle_no_sides_are_equal, .-test_scalene_triangle_no_sides_are_equal
	.globl	test_scalene_triangle_all_sides_are_equal
	.type	test_scalene_triangle_all_sides_are_equal, @function
test_scalene_triangle_all_sides_are_equal:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$108, %esi
	movl	$0, %edi
	call	UnityIgnore@PLT
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_scalene@PLT
	addq	$32, %rsp
	xorl	$1, %eax
	testb	%al, %al
	jne	.L50
	movl	$110, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L50:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	test_scalene_triangle_all_sides_are_equal, .-test_scalene_triangle_all_sides_are_equal
	.globl	test_scalene_triangle_two_sides_are_equal
	.type	test_scalene_triangle_two_sides_are_equal, @function
test_scalene_triangle_two_sides_are_equal:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$114, %esi
	movl	$0, %edi
	call	UnityIgnore@PLT
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_scalene@PLT
	addq	$32, %rsp
	xorl	$1, %eax
	testb	%al, %al
	jne	.L53
	movl	$116, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L53:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	test_scalene_triangle_two_sides_are_equal, .-test_scalene_triangle_two_sides_are_equal
	.globl	test_scalene_triangle_may_not_violate_triangle_inequality
	.type	test_scalene_triangle_may_not_violate_triangle_inequality, @function
test_scalene_triangle_may_not_violate_triangle_inequality:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$120, %esi
	movl	$0, %edi
	call	UnityIgnore@PLT
	movsd	.LC11(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_scalene@PLT
	addq	$32, %rsp
	xorl	$1, %eax
	testb	%al, %al
	jne	.L56
	movl	$122, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L56:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	test_scalene_triangle_may_not_violate_triangle_inequality, .-test_scalene_triangle_may_not_violate_triangle_inequality
	.globl	test_scalene_triangle_sides_may_be_floats
	.type	test_scalene_triangle_sides_may_be_floats, @function
test_scalene_triangle_sides_may_be_floats:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$126, %esi
	movl	$0, %edi
	call	UnityIgnore@PLT
	movsd	.LC8(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC10(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC12(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	call	is_scalene@PLT
	addq	$32, %rsp
	testb	%al, %al
	jne	.L59
	movl	$128, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	UnityFail@PLT
.L59:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	test_scalene_triangle_sides_may_be_floats, .-test_scalene_triangle_sides_may_be_floats
	.section	.rodata
.LC13:
	.string	"triangle_test.c"
	.align 8
.LC14:
	.string	"test_equilateral_triangle_all_sides_are_equal"
	.align 8
.LC15:
	.string	"test_equilateral_triangle_any_side_is_unequal"
	.align 8
.LC16:
	.string	"test_equilateral_triangle_no_sides_are_equal"
	.align 8
.LC17:
	.string	"test_equilateral_triangle_all_zero_sides_is_not_a_triangle"
	.align 8
.LC18:
	.string	"test_equilateral_triangle_sides_may_be_floats"
	.align 8
.LC19:
	.string	"test_isosceles_triangle_last_two_sides_are_equal"
	.align 8
.LC20:
	.string	"test_isosceles_triangle_first_two_sides_are_equal"
	.align 8
.LC21:
	.string	"test_isosceles_triangle_first_and_last_sides_are_equal"
	.align 8
.LC22:
	.string	"test_isosceles_triangle_equilateral_triangles_are_also_isosceles"
	.align 8
.LC23:
	.string	"test_isosceles_triangle_no_sides_are_equal"
	.align 8
.LC24:
	.string	"test_isosceles_triangle_first_triangle_inequality_violation"
	.align 8
.LC25:
	.string	"test_isosceles_triangle_second_triangle_inequality_violation"
	.align 8
.LC26:
	.string	"test_isosceles_triangle_third_triangle_inequality_violation"
	.align 8
.LC27:
	.string	"test_isosceles_triangle_sides_may_be_floats"
	.align 8
.LC28:
	.string	"test_scalene_triangle_no_sides_are_equal"
	.align 8
.LC29:
	.string	"test_scalene_triangle_all_sides_are_equal"
	.align 8
.LC30:
	.string	"test_scalene_triangle_two_sides_are_equal"
	.align 8
.LC31:
	.string	"test_scalene_triangle_may_not_violate_triangle_inequality"
	.align 8
.LC32:
	.string	"test_scalene_triangle_sides_may_be_floats"
	.text
	.globl	main
	.type	main, @function
main:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	UnityBegin@PLT
	movl	$133, %edx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	test_equilateral_triangle_all_sides_are_equal(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$134, %edx
	leaq	.LC15(%rip), %rax
	movq	%rax, %rsi
	leaq	test_equilateral_triangle_any_side_is_unequal(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$135, %edx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rsi
	leaq	test_equilateral_triangle_no_sides_are_equal(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$136, %edx
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	leaq	test_equilateral_triangle_all_zero_sides_is_not_a_triangle(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$137, %edx
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	test_equilateral_triangle_sides_may_be_floats(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$138, %edx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	leaq	test_isosceles_triangle_last_two_sides_are_equal(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$139, %edx
	leaq	.LC20(%rip), %rax
	movq	%rax, %rsi
	leaq	test_isosceles_triangle_first_two_sides_are_equal(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$140, %edx
	leaq	.LC21(%rip), %rax
	movq	%rax, %rsi
	leaq	test_isosceles_triangle_first_and_last_sides_are_equal(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$141, %edx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	test_isosceles_triangle_equilateral_triangles_are_also_isosceles(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$142, %edx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	leaq	test_isosceles_triangle_no_sides_are_equal(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$143, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	leaq	test_isosceles_triangle_first_triangle_inequality_violation(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$144, %edx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	leaq	test_isosceles_triangle_second_triangle_inequality_violation(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$145, %edx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rsi
	leaq	test_isosceles_triangle_third_triangle_inequality_violation(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$146, %edx
	leaq	.LC27(%rip), %rax
	movq	%rax, %rsi
	leaq	test_isosceles_triangle_sides_may_be_floats(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$147, %edx
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	leaq	test_scalene_triangle_no_sides_are_equal(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$148, %edx
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	leaq	test_scalene_triangle_all_sides_are_equal(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$149, %edx
	leaq	.LC30(%rip), %rax
	movq	%rax, %rsi
	leaq	test_scalene_triangle_two_sides_are_equal(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$150, %edx
	leaq	.LC31(%rip), %rax
	movq	%rax, %rsi
	leaq	test_scalene_triangle_may_not_violate_triangle_inequality(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	movl	$151, %edx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rsi
	leaq	test_scalene_triangle_sides_may_be_floats(%rip), %rax
	movq	%rax, %rdi
	call	UnityDefaultTestRun@PLT
	call	UnityEnd@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1073741824
	.align 8
.LC2:
	.long	0
	.long	1074266112
	.align 8
.LC4:
	.long	0
	.long	1075052544
	.align 8
.LC5:
	.long	0
	.long	1074790400
	.align 8
.LC6:
	.long	0
	.long	1075314688
	.align 8
.LC8:
	.long	0
	.long	1071644672
	.align 8
.LC9:
	.long	0
	.long	1072693248
	.align 8
.LC10:
	.long	-1717986918
	.long	1071225241
	.align 8
.LC11:
	.long	0
	.long	1075576832
	.align 8
.LC12:
	.long	858993459
	.long	1071854387
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
