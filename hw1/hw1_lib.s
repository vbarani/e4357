	.file	"hw1_lib.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	test_row
	.type	test_row, @function
test_row:
.LFB39:
	.file 1 "hw1_lib.c"
	.loc 1 11 0
	.cfi_startproc
	.loc 1 19 0
	movl	%esi, %edx
	imull	%esi, %edx
	.loc 1 20 0
	leal	1(%rdx), %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	.loc 1 21 0
	cltd
	idivl	%esi
	.loc 1 23 0
	testl	%esi, %esi
	jle	.L15
	.loc 1 11 0
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	.loc 1 23 0
	xorl	%r10d, %r10d
	.loc 1 11 0
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L9:
	cmpl	$1, %r8d
	.loc 1 26 0
	movl	(%rcx), %edx
	je	.L20
	addl	4(%rcx), %edx
	cmpl	$2, %r8d
	je	.L21
	addl	8(%rcx), %edx
	cmpl	$3, %r8d
	je	.L22
	addl	12(%rcx), %edx
	cmpl	$4, %r8d
	je	.L23
	addl	16(%rcx), %edx
	cmpl	$5, %r8d
	je	.L24
	addl	20(%rcx), %edx
	cmpl	$6, %r8d
	je	.L25
	addl	24(%rcx), %edx
	cmpl	$8, %r8d
	jne	.L26
	addl	28(%rcx), %edx
	.loc 1 25 0
	movl	$8, %r9d
.L11:
	cmpl	%r8d, %esi
	je	.L12
.L10:
	movl	%esi, %r12d
	movl	%r8d, %r11d
	subl	%r8d, %r12d
	movl	%r12d, %ebx
	shrl	$2, %ebx
	leal	0(,%rbx,4), %ebp
	testl	%ebp, %ebp
	je	.L13
	.loc 1 11 0
	pxor	%xmm0, %xmm0
	leaq	(%rcx,%r11,4), %r11
	xorl	%r8d, %r8d
.L14:
	addl	$1, %r8d
	.loc 1 26 0 discriminator 2
	paddd	(%r11), %xmm0
	addq	$16, %r11
	cmpl	%r8d, %ebx
	ja	.L14
	movdqa	%xmm0, %xmm2
	addl	%ebp, %r9d
	psrldq	$8, %xmm2
	paddd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm3
	psrldq	$4, %xmm3
	paddd	%xmm3, %xmm0
	movd	%xmm0, -4(%rsp)
	addl	-4(%rsp), %edx
	cmpl	%ebp, %r12d
	je	.L12
.L13:
	.loc 1 26 0 is_stmt 0
	movslq	%r9d, %r8
	addl	(%rcx,%r8,4), %edx
	.loc 1 25 0 is_stmt 1
	leal	1(%r9), %r8d
	cmpl	%r8d, %esi
	jle	.L12
	.loc 1 26 0
	movslq	%r8d, %r8
	.loc 1 25 0
	addl	$2, %r9d
	.loc 1 26 0
	addl	(%rcx,%r8,4), %edx
	.loc 1 25 0
	cmpl	%r9d, %esi
	jle	.L12
	.loc 1 26 0
	movslq	%r9d, %r9
	addl	(%rcx,%r9,4), %edx
.L12:
	.loc 1 28 0
	cmpl	%edx, %eax
	jne	.L16
	addq	$1, %r10
	.loc 1 23 0
	cmpl	%r10d, %esi
	jle	.L17
.L3:
	movq	(%rdi,%r10,8), %rcx
	.loc 1 23 0 is_stmt 0 discriminator 1
	movl	%esi, %r8d
	movq	%rcx, %rdx
	andl	$15, %edx
	shrq	$2, %rdx
	negq	%rdx
	andl	$3, %edx
	cmpl	%edx, %esi
	cmovbe	%esi, %edx
	cmpl	$8, %esi
	jbe	.L9
	testl	%edx, %edx
	jne	.L33
	.loc 1 25 0 is_stmt 1
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%edx, %edx
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L20:
	movl	$1, %r9d
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L22:
	movl	$3, %r9d
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L21:
	movl	$2, %r9d
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L26:
	movl	$7, %r9d
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L25:
	movl	$6, %r9d
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L24:
	movl	$5, %r9d
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L23:
	movl	$4, %r9d
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L17:
	.loc 1 33 0
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	.loc 1 32 0
	movl	$1, %eax
	.loc 1 33 0
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	.cfi_restore_state
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	.loc 1 29 0
	xorl	%eax, %eax
	.loc 1 33 0
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 8
	ret
.L15:
	.loc 1 32 0
	movl	$1, %eax
	.loc 1 33 0
	ret
.L33:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	.loc 1 23 0
	movl	%edx, %r8d
	jmp	.L9
	.cfi_endproc
.LFE39:
	.size	test_row, .-test_row
	.p2align 4,,15
	.globl	test_column
	.type	test_column, @function
test_column:
.LFB40:
	.loc 1 37 0
	.cfi_startproc
.LVL0:
	.loc 1 45 0
	movl	%esi, %edx
	imull	%esi, %edx
.LVL1:
	.loc 1 46 0
	leal	1(%rdx), %eax
	imull	%edx, %eax
	movl	%eax, %edx
.LVL2:
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	.loc 1 47 0
	cltd
	idivl	%esi
.LVL3:
	.loc 1 49 0
	testl	%esi, %esi
	jle	.L41
	leal	-1(%rsi), %edx
	xorl	%r9d, %r9d
	leaq	4(,%rdx,4), %r10
.LVL4:
	.p2align 4,,10
	.p2align 3
.L36:
	.loc 1 37 0 discriminator 1
	xorl	%edx, %edx
	xorl	%ecx, %ecx
.LVL5:
	.p2align 4,,10
	.p2align 3
.L38:
	.loc 1 52 0 discriminator 2
	movq	(%rdi,%rdx,8), %r8
	addq	$1, %rdx
.LVL6:
	addl	(%r8,%r9), %ecx
.LVL7:
	.loc 1 51 0 discriminator 2
	cmpl	%edx, %esi
	jg	.L38
	.loc 1 54 0
	cmpl	%ecx, %eax
	jne	.L40
	addq	$4, %r9
	.loc 1 49 0
	cmpq	%r10, %r9
	jne	.L36
.LVL8:
.L41:
	.loc 1 58 0
	movl	$1, %eax
.LVL9:
	.loc 1 59 0
	ret
.LVL10:
.L40:
	.loc 1 55 0
	xorl	%eax, %eax
.LVL11:
	ret
	.cfi_endproc
.LFE40:
	.size	test_column, .-test_column
	.p2align 4,,15
	.globl	test_diagonal
	.type	test_diagonal, @function
test_diagonal:
.LFB41:
	.loc 1 65 0
	.cfi_startproc
.LVL12:
	.loc 1 73 0
	movl	%esi, %edx
	imull	%esi, %edx
.LVL13:
	.loc 1 74 0
	leal	1(%rdx), %eax
	imull	%edx, %eax
	movl	%eax, %edx
.LVL14:
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	.loc 1 75 0
	cltd
	idivl	%esi
.LVL15:
	.loc 1 79 0
	testl	%esi, %esi
	jle	.L48
	leal	-1(%rsi), %edx
	xorl	%ecx, %ecx
	.loc 1 78 0
	xorl	%r8d, %r8d
	leaq	4(,%rdx,4), %r10
.LVL16:
	.p2align 4,,10
	.p2align 3
.L44:
	.loc 1 80 0 discriminator 2
	movq	(%rdi,%rcx,2), %r9
	addl	(%r9,%rcx), %r8d
.LVL17:
	addq	$4, %rcx
	.loc 1 79 0 discriminator 2
	cmpq	%r10, %rcx
	jne	.L44
.LVL18:
.L43:
	.loc 1 83 0
	xorl	%edx, %edx
	.loc 1 82 0
	cmpl	%eax, %r8d
	je	.L51
	.loc 1 101 0
	movl	%edx, %eax
.LVL19:
	ret
.LVL20:
	.p2align 4,,10
	.p2align 3
.L51:
	.loc 1 90 0
	subl	$1, %esi
.LVL21:
	js	.L50
	movslq	%esi, %rdx
	movl	%esi, %esi
	leaq	0(,%rdx,4), %rax
.LVL22:
	subq	%rsi, %rdx
	leaq	-4(,%rdx,4), %rsi
.LVL23:
	.loc 1 87 0
	xorl	%edx, %edx
.LVL24:
	.p2align 4,,10
	.p2align 3
.L47:
	.loc 1 91 0 discriminator 2
	movq	(%rdi), %rcx
	addq	$8, %rdi
	addl	(%rcx,%rax), %edx
.LVL25:
	subq	$4, %rax
	.loc 1 90 0 discriminator 2
	cmpq	%rsi, %rax
	jne	.L47
.LVL26:
.L46:
	.loc 1 94 0
	cmpl	%edx, %r8d
	sete	%dl
	movzbl	%dl, %edx
	.loc 1 101 0
	movl	%edx, %eax
	ret
.LVL27:
.L48:
	.loc 1 78 0
	xorl	%r8d, %r8d
	jmp	.L43
.LVL28:
.L50:
	.loc 1 87 0
	xorl	%edx, %edx
	jmp	.L46
	.cfi_endproc
.LFE41:
	.size	test_diagonal, .-test_diagonal
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x453
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF62
	.byte	0x1
	.long	.LASF63
	.long	.LASF64
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd4
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x83
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x84
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x4
	.byte	0xf5
	.long	0x21c
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0xf6
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xfb
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0xff
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x104
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x105
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x106
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x108
	.long	0x254
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x10a
	.long	0x25a
	.byte	0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x10c
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x110
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x112
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x116
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x117
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x118
	.long	0x260
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x11c
	.long	0x270
	.byte	0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x125
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12e
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x12f
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x130
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x131
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x132
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x134
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x136
	.long	0x276
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF65
	.byte	0x4
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF42
	.byte	0x18
	.byte	0x4
	.byte	0xa0
	.long	0x254
	.uleb128 0x8
	.long	.LASF43
	.byte	0x4
	.byte	0xa1
	.long	0x254
	.byte	0
	.uleb128 0x8
	.long	.LASF44
	.byte	0x4
	.byte	0xa2
	.long	0x25a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa6
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x223
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x270
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21c
	.uleb128 0xb
	.long	0x95
	.long	0x286
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0xd
	.long	.LASF53
	.byte	0x1
	.byte	0xb
	.long	0x62
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x316
	.uleb128 0xe
	.string	"a"
	.byte	0x1
	.byte	0xb
	.long	0x316
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.long	.LASF48
	.byte	0x1
	.byte	0xb
	.long	0x62
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.long	.LASF51
	.byte	0x1
	.byte	0xc
	.long	0x62
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x11
	.long	.LASF49
	.byte	0x1
	.byte	0xd
	.long	0x62
	.uleb128 0x11
	.long	.LASF50
	.byte	0x1
	.byte	0xe
	.long	0x62
	.uleb128 0x10
	.long	.LASF52
	.byte	0x1
	.byte	0xf
	.long	0x62
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x10
	.long	0x62
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0x11
	.long	0x62
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x286
	.uleb128 0xd
	.long	.LASF54
	.byte	0x1
	.byte	0x25
	.long	0x62
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ac
	.uleb128 0xe
	.string	"a"
	.byte	0x1
	.byte	0x25
	.long	0x316
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.long	.LASF48
	.byte	0x1
	.byte	0x25
	.long	0x62
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.long	.LASF51
	.byte	0x1
	.byte	0x26
	.long	0x62
	.long	.LLST0
	.uleb128 0x13
	.long	.LASF49
	.byte	0x1
	.byte	0x27
	.long	0x62
	.long	.LLST1
	.uleb128 0x13
	.long	.LASF55
	.byte	0x1
	.byte	0x28
	.long	0x62
	.long	.LLST2
	.uleb128 0x13
	.long	.LASF56
	.byte	0x1
	.byte	0x29
	.long	0x62
	.long	.LLST3
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x2a
	.long	0x62
	.long	.LLST4
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.byte	0x2b
	.long	0x62
	.long	.LLST5
	.byte	0
	.uleb128 0xd
	.long	.LASF57
	.byte	0x1
	.byte	0x41
	.long	0x62
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x440
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.byte	0x41
	.long	0x316
	.long	.LLST6
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.byte	0x41
	.long	0x62
	.long	.LLST7
	.uleb128 0x13
	.long	.LASF51
	.byte	0x1
	.byte	0x42
	.long	0x62
	.long	.LLST8
	.uleb128 0x13
	.long	.LASF49
	.byte	0x1
	.byte	0x43
	.long	0x62
	.long	.LLST9
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0x44
	.long	0x62
	.long	.LLST10
	.uleb128 0x13
	.long	.LASF59
	.byte	0x1
	.byte	0x45
	.long	0x62
	.long	.LLST11
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x46
	.long	0x62
	.long	.LLST12
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.byte	0x47
	.long	0x62
	.long	.LLST13
	.byte	0
	.uleb128 0x17
	.long	.LASF60
	.byte	0x5
	.byte	0xa8
	.long	0x25a
	.uleb128 0x17
	.long	.LASF61
	.byte	0x5
	.byte	0xa9
	.long	0x25a
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL2-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x8
	.byte	0x71
	.sleb128 1
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL2-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x10
	.byte	0x74
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x23
	.uleb128 0x1
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL3-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x23
	.byte	0x74
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x23
	.uleb128 0x1
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x23
	.uleb128 0x1
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x4f
	.byte	0x25
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL11-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x23
	.byte	0x74
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x23
	.uleb128 0x1
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x23
	.uleb128 0x1
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x4f
	.byte	0x25
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL5-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL10-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL12-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL24-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL27-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL12-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL21-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.quad	.LVL23-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL28-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL14-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL21-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x6
	.byte	0x74
	.sleb128 1
	.byte	0x74
	.sleb128 1
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL23-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL28-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x6
	.byte	0x74
	.sleb128 1
	.byte	0x74
	.sleb128 1
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x8
	.byte	0x71
	.sleb128 1
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL14-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x10
	.byte	0x74
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x23
	.uleb128 0x1
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL21-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x10
	.byte	0x74
	.sleb128 1
	.byte	0x74
	.sleb128 1
	.byte	0x1e
	.byte	0x74
	.sleb128 1
	.byte	0x74
	.sleb128 1
	.byte	0x1e
	.byte	0x23
	.uleb128 0x1
	.byte	0x1e
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL23-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x14
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1e
	.byte	0x23
	.uleb128 0x1
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1e
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x10
	.byte	0x74
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x23
	.uleb128 0x1
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL28-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x10
	.byte	0x74
	.sleb128 1
	.byte	0x74
	.sleb128 1
	.byte	0x1e
	.byte	0x74
	.sleb128 1
	.byte	0x74
	.sleb128 1
	.byte	0x1e
	.byte	0x23
	.uleb128 0x1
	.byte	0x1e
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL15-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x23
	.byte	0x74
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x23
	.uleb128 0x1
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x23
	.uleb128 0x1
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x4f
	.byte	0x25
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL20-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x23
	.byte	0x74
	.sleb128 1
	.byte	0x74
	.sleb128 1
	.byte	0x1e
	.byte	0x74
	.sleb128 1
	.byte	0x74
	.sleb128 1
	.byte	0x1e
	.byte	0x23
	.uleb128 0x1
	.byte	0x1e
	.byte	0x74
	.sleb128 1
	.byte	0x74
	.sleb128 1
	.byte	0x1e
	.byte	0x74
	.sleb128 1
	.byte	0x74
	.sleb128 1
	.byte	0x1e
	.byte	0x23
	.uleb128 0x1
	.byte	0x1e
	.byte	0x4f
	.byte	0x25
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0x74
	.sleb128 1
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL23-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x2c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1e
	.byte	0x23
	.uleb128 0x1
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1e
	.byte	0x23
	.uleb128 0x1
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1e
	.byte	0x4f
	.byte	0x25
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL27-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL16-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL20-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL24-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL27-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL20-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL28-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL21-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL23-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL28-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"__off_t"
.LASF59:
	.string	"diagonal_sum"
.LASF13:
	.string	"_IO_read_ptr"
.LASF25:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF31:
	.string	"_shortbuf"
.LASF57:
	.string	"test_diagonal"
.LASF19:
	.string	"_IO_buf_base"
.LASF47:
	.string	"long long unsigned int"
.LASF46:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF6:
	.string	"long int"
.LASF12:
	.string	"_flags"
.LASF64:
	.string	"/home/barani/Course/e4357/hw1"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF42:
	.string	"_IO_marker"
.LASF60:
	.string	"stdin"
.LASF3:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF50:
	.string	"expected_row_sum"
.LASF17:
	.string	"_IO_write_ptr"
.LASF44:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF21:
	.string	"_IO_save_base"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF61:
	.string	"stdout"
.LASF58:
	.string	"expected_diagonal_sum"
.LASF10:
	.string	"sizetype"
.LASF48:
	.string	"dimension"
.LASF62:
	.string	"GNU C 4.8.2 -mtune=generic -march=x86-64 -g -O3 -fstack-protector"
.LASF18:
	.string	"_IO_write_end"
.LASF54:
	.string	"test_column"
.LASF65:
	.string	"_IO_lock_t"
.LASF41:
	.string	"_IO_FILE"
.LASF63:
	.string	"hw1_lib.c"
.LASF53:
	.string	"test_row"
.LASF45:
	.string	"_pos"
.LASF24:
	.string	"_markers"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF56:
	.string	"column_sum"
.LASF30:
	.string	"_vtable_offset"
.LASF55:
	.string	"expected_column_sum"
.LASF11:
	.string	"char"
.LASF51:
	.string	"square"
.LASF43:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF49:
	.string	"total_sum"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF40:
	.string	"_unused2"
.LASF52:
	.string	"row_sum"
.LASF22:
	.string	"_IO_backup_base"
.LASF16:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
