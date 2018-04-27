	.file	"Actor.cpp"
	.text
	.align 2
.globl __ZN5ActorC2Ev
	.def	__ZN5ActorC2Ev;	.scl	2;	.type	32;	.endef
__ZN5ActorC2Ev:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	$0, 16(%eax)
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	$8, 4(%eax)
	movl	8(%ebp), %eax
	movl	$0, 32(%eax)
	movl	8(%ebp), %eax
	movl	$16711680, 44(%eax)
	movl	8(%ebp), %eax
	movl	$120, 60(%eax)
	movl	8(%ebp), %eax
	movl	$450560, 64(%eax)
	popl	%ebp
	ret
	.align 2
.globl __ZN5ActorC1Ev
	.def	__ZN5ActorC1Ev;	.scl	2;	.type	32;	.endef
__ZN5ActorC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	$0, 16(%eax)
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	$8, 4(%eax)
	movl	8(%ebp), %eax
	movl	$0, 32(%eax)
	movl	8(%ebp), %eax
	movl	$16711680, 44(%eax)
	movl	8(%ebp), %eax
	movl	$120, 60(%eax)
	movl	8(%ebp), %eax
	movl	$450560, 64(%eax)
	popl	%ebp
	ret
	.align 2
.globl __ZN5ActorC2Eiiii
	.def	__ZN5ActorC2Eiiii;	.scl	2;	.type	32;	.endef
__ZN5ActorC2Eiiii:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 20(%edx)
	movl	8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 32(%edx)
	movl	8(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 44(%edx)
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	$8, 4(%eax)
	movl	8(%ebp), %eax
	movl	$120, 60(%eax)
	movl	8(%ebp), %eax
	movl	$450560, 64(%eax)
	popl	%ebp
	ret
	.align 2
.globl __ZN5ActorC1Eiiii
	.def	__ZN5ActorC1Eiiii;	.scl	2;	.type	32;	.endef
__ZN5ActorC1Eiiii:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 20(%edx)
	movl	8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 32(%edx)
	movl	8(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 44(%edx)
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	$8, 4(%eax)
	movl	8(%ebp), %eax
	movl	$120, 60(%eax)
	movl	8(%ebp), %eax
	movl	$450560, 64(%eax)
	popl	%ebp
	ret
	.align 2
.globl __ZN5Actor6SetMapEP3Map
	.def	__ZN5Actor6SetMapEP3Map;	.scl	2;	.type	32;	.endef
__ZN5Actor6SetMapEP3Map:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 48(%edx)
	popl	%ebp
	ret
	.align 2
.globl __ZN5Actor8SetInputEP5Input
	.def	__ZN5Actor8SetInputEP5Input;	.scl	2;	.type	32;	.endef
__ZN5Actor8SetInputEP5Input:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 52(%edx)
	popl	%ebp
	ret
	.align 2
.globl __ZN5Actor9EnableFovEb
	.def	__ZN5Actor9EnableFovEb;	.scl	2;	.type	32;	.endef
__ZN5Actor9EnableFovEb:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	12(%ebp), %eax
	movb	%al, -1(%ebp)
	movl	8(%ebp), %edx
	movzbl	-1(%ebp), %eax
	movb	%al, 56(%edx)
	leave
	ret
	.align 2
.globl __ZN5Actor8GetStateEv
	.def	__ZN5Actor8GetStateEv;	.scl	2;	.type	32;	.endef
__ZN5Actor8GetStateEv:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	popl	%ebp
	ret
	.align 2
.globl __ZN5Actor8GetColorEv
	.def	__ZN5Actor8GetColorEv;	.scl	2;	.type	32;	.endef
__ZN5Actor8GetColorEv:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	popl	%ebp
	ret
	.align 2
.globl __ZN5Actor6RenderEP3Gfx
	.def	__ZN5Actor6RenderEP3Gfx;	.scl	2;	.type	32;	.endef
__ZN5Actor6RenderEP3Gfx:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor9RenderFovEP3Gfx
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN3Gfx8SetColorEi
	movl	$32, 16(%esp)
	movl	$32, 12(%esp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN3Gfx10FillCircleEiiii
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN3Gfx8SetColorEi
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	cmpl	$2, -4(%ebp)
	je	L13
	cmpl	$2, -4(%ebp)
	jg	L16
	cmpl	$1, -4(%ebp)
	je	L12
	jmp	L10
L16:
	cmpl	$4, -4(%ebp)
	je	L14
	cmpl	$8, -4(%ebp)
	je	L15
	jmp	L10
L12:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$16, %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$16, %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$16, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN3Gfx8DrawLineEiiii
	jmp	L10
L13:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$16, %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$31, %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$16, %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$16, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN3Gfx8DrawLineEiiii
	jmp	L10
L14:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$16, %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$16, %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$16, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN3Gfx8DrawLineEiiii
	jmp	L10
L15:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$31, %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$16, %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$16, %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$16, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN3Gfx8DrawLineEiiii
L10:
	leave
	ret
.lcomm _ZZN5Actor9RenderFovEP3GfxE6points,14800
	.align 2
.globl __ZN5Actor9RenderFovEP3Gfx
	.def	__ZN5Actor9RenderFovEP3Gfx;	.scl	2;	.type	32;	.endef
__ZN5Actor9RenderFovEP3Gfx:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$16, %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$16, %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	cmpl	$2, -28(%ebp)
	je	L20
	cmpl	$2, -28(%ebp)
	jg	L24
	cmpl	$1, -28(%ebp)
	je	L19
	jmp	L23
L24:
	cmpl	$4, -28(%ebp)
	je	L21
	cmpl	$8, -28(%ebp)
	je	L22
	jmp	L23
L19:
	movl	$180, -16(%ebp)
	jmp	L18
L20:
	movl	$0, -16(%ebp)
	jmp	L18
L21:
	movl	$270, -16(%ebp)
	jmp	L18
L22:
	movl	$90, -16(%ebp)
	jmp	L18
L23:
	movl	$0, -16(%ebp)
L18:
	movl	8(%ebp), %eax
	cmpl	$0, 52(%eax)
	je	L17
	movl	$0, -20(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, _ZZN5Actor9RenderFovEP3GfxE6points
	movl	-8(%ebp), %eax
	movl	%eax, _ZZN5Actor9RenderFovEP3GfxE6points+4
	leal	-20(%ebp), %eax
	incl	(%eax)
	movl	-20(%ebp), %eax
	sall	$3, %eax
	addl	$_ZZN5Actor9RenderFovEP3GfxE6points, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor12GetFovPointsEPi
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, _ZZN5Actor9RenderFovEP3GfxE6points(,%edx,8)
	movl	-20(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, _ZZN5Actor9RenderFovEP3GfxE6points+4(,%edx,8)
	leal	-20(%ebp), %eax
	incl	(%eax)
	movl	$0, -24(%ebp)
L26:
	movl	-20(%ebp), %eax
	decl	%eax
	cmpl	-24(%ebp), %eax
	jle	L27
	movl	$16777215, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN3Gfx8SetColorEi
	movl	-24(%ebp), %eax
	movl	_ZZN5Actor9RenderFovEP3GfxE6points+12(,%eax,8), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	_ZZN5Actor9RenderFovEP3GfxE6points+8(,%eax,8), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	_ZZN5Actor9RenderFovEP3GfxE6points+4(,%eax,8), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	_ZZN5Actor9RenderFovEP3GfxE6points(,%eax,8), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN3Gfx8DrawLineEiiii
	leal	-24(%ebp), %eax
	incl	(%eax)
	jmp	L26
L27:
	movl	$128, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN3Gfx8SetAlphaEi
	movl	$16777215, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN3Gfx8SetColorEi
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$_ZZN5Actor9RenderFovEP3GfxE6points, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN3Gfx11FillPolygonEPii
	movl	$255, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN3Gfx8SetAlphaEi
L17:
	leave
	ret
	.align 2
.globl __ZN5Actor12GetFovPointsEPi
	.def	__ZN5Actor12GetFovPointsEPi;	.scl	2;	.type	32;	.endef
__ZN5Actor12GetFovPointsEPi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -4(%ebp)
	movl	$-1, -12(%ebp)
	movl	$-1, -16(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	cmpl	$2, -32(%ebp)
	je	L32
	cmpl	$2, -32(%ebp)
	jg	L36
	cmpl	$1, -32(%ebp)
	je	L31
	jmp	L35
L36:
	cmpl	$4, -32(%ebp)
	je	L33
	cmpl	$8, -32(%ebp)
	je	L34
	jmp	L35
L31:
	movl	$180, -8(%ebp)
	jmp	L30
L32:
	movl	$0, -8(%ebp)
	jmp	L30
L33:
	movl	$270, -8(%ebp)
	jmp	L30
L34:
	movl	$90, -8(%ebp)
	jmp	L30
L35:
	movl	$0, -8(%ebp)
L30:
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	sarl	%edx
	movl	-8(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
L37:
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	60(%eax), %eax
	addl	%edx, %eax
	cmpl	-24(%ebp), %eax
	jl	L38
	fildl	-24(%ebp)
	fstpl	8(%esp)
	movl	-4(%ebp), %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor18GetRayIntersectionEPid
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-4(%ebp), %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor10SortPointsEPii
	cmpl	$0, -28(%ebp)
	je	L39
	movl	-4(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	12(%ebp), %eax
	movl	(%edx,%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	L41
	movl	-4(%ebp), %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	L41
	jmp	L39
L41:
	movl	-4(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	12(%ebp), %eax
	movl	(%edx,%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-4(%ebp), %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	leal	-4(%ebp), %eax
	incl	(%eax)
L39:
	leal	-24(%ebp), %eax
	incl	(%eax)
	jmp	L37
L38:
	movl	-4(%ebp), %eax
	leave
	ret
	.align 2
.globl __ZN5Actor6UpdateEi
	.def	__ZN5Actor6UpdateEi;	.scl	2;	.type	32;	.endef
__ZN5Actor6UpdateEi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %ecx
	addl	$49, %ecx
	movl	$1374389535, %eax
	imull	%ecx
	sarl	$4, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %ecx
	movl	8(%ebp), %ebx
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %edx
	addl	%edx, %eax
	addl	%eax, %eax
	addl	24(%ebx), %eax
	movl	%eax, 24(%ecx)
	movl	$8, -8(%ebp)
	movl	8(%ebp), %eax
	cmpl	$0, 52(%eax)
	je	L43
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN5Input11GetPressureEv
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jns	L44
	addl	$63, -20(%ebp)
L44:
	movl	-20(%ebp), %eax
	sarl	$6, %eax
	movl	%eax, -8(%ebp)
	movl	$8, -8(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN5Input6UpdateEi
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN5Input9IsPressedEi
	testb	%al, %al
	je	L45
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor4MoveEi
L45:
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN5Input9IsPressedEi
	testb	%al, %al
	je	L46
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor4MoveEi
L46:
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN5Input9IsPressedEi
	testb	%al, %al
	je	L47
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor4MoveEi
L47:
	movl	$8, 4(%esp)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN5Input9IsPressedEi
	testb	%al, %al
	je	L43
	movl	$8, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor4MoveEi
L43:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	L51
	jmp	L42
L51:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	cmpl	$2, -24(%ebp)
	je	L54
	cmpl	$2, -24(%ebp)
	jg	L57
	cmpl	$1, -24(%ebp)
	je	L53
	jmp	L52
L57:
	cmpl	$4, -24(%ebp)
	je	L55
	cmpl	$8, -24(%ebp)
	je	L56
	jmp	L52
L53:
	movl	8(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	16(%eax), %eax
	subl	%edx, %eax
	movl	%eax, 16(%ecx)
	jmp	L52
L54:
	movl	8(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	addl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	jmp	L52
L55:
	movl	8(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	20(%eax), %eax
	subl	%edx, %eax
	movl	%eax, 20(%ecx)
	jmp	L52
L56:
	movl	8(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	addl	20(%edx), %eax
	movl	%eax, 20(%ecx)
L52:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN3Map6HasColEP5Actor
	testb	%al, %al
	je	L58
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 20(%edx)
L58:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	andl	$31, %eax
	testl	%eax, %eax
	jne	L42
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	andl	$31, %eax
	testl	%eax, %eax
	jne	L42
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor5PauseEv
L42:
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
	.align 2
.globl __ZN5Actor4MoveEi
	.def	__ZN5Actor4MoveEi;	.scl	2;	.type	32;	.endef
__ZN5Actor4MoveEi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	je	L61
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	L62
L61:
	movl	8(%ebp), %eax
	movl	$1, (%eax)
L62:
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
	movl	8(%ebp), %eax
	cmpl	$0, 52(%eax)
	je	L60
	movl	8(%ebp), %ebx
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN5Input11GetPressureEv
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %edx
	addl	%edx, %eax
	sall	$5, %eax
	sarl	$8, %eax
	movl	%eax, 28(%ebx)
	movl	8(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	$1000, %eax
	subl	28(%edx), %eax
	movl	%eax, 28(%ecx)
L60:
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
	.align 2
.globl __ZN5Actor5PauseEv
	.def	__ZN5Actor5PauseEv;	.scl	2;	.type	32;	.endef
__ZN5Actor5PauseEv:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
	popl	%ebp
	ret
	.align 2
.globl __ZN5Actor9GetIndexIEv
	.def	__ZN5Actor9GetIndexIEv;	.scl	2;	.type	32;	.endef
__ZN5Actor9GetIndexIEv:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	popl	%ebp
	ret
	.align 2
.globl __ZN5Actor9GetIndexJEv
	.def	__ZN5Actor9GetIndexJEv;	.scl	2;	.type	32;	.endef
__ZN5Actor9GetIndexJEv:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	popl	%ebp
	ret
	.align 2
.globl __ZN5Actor4GetXEv
	.def	__ZN5Actor4GetXEv;	.scl	2;	.type	32;	.endef
__ZN5Actor4GetXEv:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	popl	%ebp
	ret
	.align 2
.globl __ZN5Actor4GetYEv
	.def	__ZN5Actor4GetYEv;	.scl	2;	.type	32;	.endef
__ZN5Actor4GetYEv:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	popl	%ebp
	ret
	.align 2
.globl __ZN5Actor18GetRayIntersectionEPid
	.def	__ZN5Actor18GetRayIntersectionEPid;	.scl	2;	.type	32;	.endef
__ZN5Actor18GetRayIntersectionEPid:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$116, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$16, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$16, %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %ebx
	movl	8(%ebp), %eax
	fildl	64(%eax)
	fstps	-92(%ebp)
	fldl	16(%ebp)
	fstpl	(%esp)
	call	__ZN4Math3CosEd
	fmuls	-92(%ebp)
	fnstcw	-82(%ebp)
	movzwl	-82(%ebp), %eax
	orw	$3072, %ax
	movw	%ax, -84(%ebp)
	fldcw	-84(%ebp)
	fistpl	-88(%ebp)
	fldcw	-82(%ebp)
	movl	-88(%ebp), %eax
	addl	16(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %ebx
	movl	8(%ebp), %eax
	fildl	64(%eax)
	fstps	-96(%ebp)
	fldl	16(%ebp)
	fstpl	(%esp)
	call	__ZN4Math3SinEd
	fmuls	-96(%ebp)
	fnstcw	-82(%ebp)
	movzwl	-82(%ebp), %eax
	orw	$3072, %ax
	movw	%ax, -84(%ebp)
	fldcw	-84(%ebp)
	fistpl	-88(%ebp)
	fldcw	-82(%ebp)
	movl	-88(%ebp), %eax
	addl	20(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN3Map10GetNbLinesEv
	movl	%eax, -44(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -52(%ebp)
L70:
	movl	-52(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jge	L71
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN3Map7GetLineEPii
	leal	-72(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor28GetIntersectionBetween2LinesEPiS0_S0_
	testb	%al, %al
	je	L72
	movl	-48(%ebp), %eax
	leal	0(,%eax,8), %ecx
	movl	12(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, (%ecx,%edx)
	movl	-48(%ebp), %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	-76(%ebp), %eax
	movl	%eax, (%edx)
	leal	-48(%ebp), %eax
	incl	(%eax)
L72:
	leal	-52(%ebp), %eax
	incl	(%eax)
	jmp	L70
L71:
	movl	-48(%ebp), %eax
	leal	0(,%eax,8), %ecx
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%ecx,%edx)
	movl	-48(%ebp), %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	leal	-48(%ebp), %eax
	incl	(%eax)
	movl	-48(%ebp), %eax
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
	.section .rdata,"dr"
	.align 8
LC2:
	.long	0
	.long	1071644672
	.text
	.align 2
.globl __ZN5Actor28GetIntersectionBetween2LinesEPiS0_S0_
	.def	__ZN5Actor28GetIntersectionBetween2LinesEPiS0_S0_;	.scl	2;	.type	32;	.endef
__ZN5Actor28GetIntersectionBetween2LinesEPiS0_S0_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$88, %esp
	movl	16(%ebp), %eax
	movl	16(%ebp), %edx
	addl	$8, %edx
	movl	(%eax), %eax
	cmpl	(%edx), %eax
	jne	L76
	movl	20(%ebp), %eax
	movl	20(%ebp), %edx
	addl	$8, %edx
	movl	(%eax), %eax
	cmpl	(%edx), %eax
	jne	L76
	movl	$0, -80(%ebp)
	jmp	L75
L76:
	movl	16(%ebp), %ecx
	addl	$12, %ecx
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	(%ecx), %eax
	subl	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	movl	16(%ebp), %ecx
	addl	$8, %ecx
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	(%ecx), %eax
	subl	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivrp	%st, %st(1)
	fstpl	-8(%ebp)
	movl	16(%ebp), %eax
	addl	$4, %eax
	fildl	(%eax)
	movl	16(%ebp), %eax
	fildl	(%eax)
	fmull	-8(%ebp)
	fsubrp	%st, %st(1)
	fstpl	-16(%ebp)
	movl	20(%ebp), %ecx
	addl	$12, %ecx
	movl	20(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	(%ecx), %eax
	subl	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	movl	20(%ebp), %ecx
	addl	$8, %ecx
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	(%ecx), %eax
	subl	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivrp	%st, %st(1)
	fstpl	-24(%ebp)
	movl	20(%ebp), %eax
	addl	$4, %eax
	fildl	(%eax)
	movl	20(%ebp), %eax
	fildl	(%eax)
	fmull	-24(%ebp)
	fsubrp	%st, %st(1)
	fstpl	-32(%ebp)
	fldl	-32(%ebp)
	fsubl	-16(%ebp)
	fchs
	fldl	-24(%ebp)
	fsubl	-8(%ebp)
	fdivrp	%st, %st(1)
	fstpl	-40(%ebp)
	fldl	-8(%ebp)
	fmull	-40(%ebp)
	faddl	-16(%ebp)
	fstpl	-48(%ebp)
	movl	16(%ebp), %eax
	movl	16(%ebp), %edx
	addl	$8, %edx
	movl	(%eax), %eax
	cmpl	(%edx), %eax
	jne	L77
	movl	16(%ebp), %eax
	fildl	(%eax)
	fstpl	-40(%ebp)
	fldl	-24(%ebp)
	fmull	-40(%ebp)
	faddl	-32(%ebp)
	fstpl	-48(%ebp)
L77:
	movl	20(%ebp), %eax
	movl	20(%ebp), %edx
	addl	$8, %edx
	movl	(%eax), %eax
	cmpl	(%edx), %eax
	jne	L78
	movl	20(%ebp), %eax
	fildl	(%eax)
	fstpl	-40(%ebp)
	fldl	-8(%ebp)
	fmull	-40(%ebp)
	faddl	-16(%ebp)
	fstpl	-48(%ebp)
L78:
	movl	12(%ebp), %edx
	fldl	-40(%ebp)
	fldl	LC2
	faddp	%st, %st(1)
	fnstcw	-70(%ebp)
	movzwl	-70(%ebp), %eax
	orw	$3072, %ax
	movw	%ax, -72(%ebp)
	fldcw	-72(%ebp)
	fistpl	(%edx)
	fldcw	-70(%ebp)
	movl	12(%ebp), %eax
	addl	$4, %eax
	fldl	-48(%ebp)
	fldl	LC2
	faddp	%st, %st(1)
	fldcw	-72(%ebp)
	fistpl	(%eax)
	fldcw	-70(%ebp)
	movb	$0, -49(%ebp)
	movb	$0, -50(%ebp)
	movl	16(%ebp), %eax
	movl	16(%ebp), %edx
	addl	$8, %edx
	movl	(%eax), %eax
	cmpl	(%edx), %eax
	jge	L79
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	16(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	L80
L79:
	movl	16(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
L80:
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	16(%ebp), %edx
	addl	$12, %edx
	movl	(%eax), %eax
	cmpl	(%edx), %eax
	jge	L81
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	L82
L81:
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
L82:
	fldl	-40(%ebp)
	fldl	LC2
	faddp	%st, %st(1)
	fldcw	-72(%ebp)
	fistpl	-76(%ebp)
	fldcw	-70(%ebp)
	movl	-76(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jl	L83
	fldl	-40(%ebp)
	fldl	LC2
	faddp	%st, %st(1)
	fldcw	-72(%ebp)
	fistpl	-76(%ebp)
	fldcw	-70(%ebp)
	movl	-76(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jg	L83
	fldl	-48(%ebp)
	fldl	LC2
	faddp	%st, %st(1)
	fldcw	-72(%ebp)
	fistpl	-76(%ebp)
	fldcw	-70(%ebp)
	movl	-76(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jl	L83
	fldl	-48(%ebp)
	fldl	LC2
	faddp	%st, %st(1)
	fldcw	-72(%ebp)
	fistpl	-76(%ebp)
	fldcw	-70(%ebp)
	movl	-76(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jg	L83
	movb	$1, -49(%ebp)
L83:
	cmpb	$0, -49(%ebp)
	jne	L84
	movl	$0, -80(%ebp)
	jmp	L75
L84:
	movl	20(%ebp), %eax
	movl	20(%ebp), %edx
	addl	$8, %edx
	movl	(%eax), %eax
	cmpl	(%edx), %eax
	jge	L85
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	20(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	L86
L85:
	movl	20(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
L86:
	movl	20(%ebp), %eax
	addl	$4, %eax
	movl	20(%ebp), %edx
	addl	$12, %edx
	movl	(%eax), %eax
	cmpl	(%edx), %eax
	jge	L87
	movl	20(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	20(%ebp), %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	L88
L87:
	movl	20(%ebp), %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	20(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
L88:
	fldl	-40(%ebp)
	fldl	LC2
	faddp	%st, %st(1)
	fldcw	-72(%ebp)
	fistpl	-76(%ebp)
	fldcw	-70(%ebp)
	movl	-76(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jl	L89
	fldl	-40(%ebp)
	fldl	LC2
	faddp	%st, %st(1)
	fldcw	-72(%ebp)
	fistpl	-76(%ebp)
	fldcw	-70(%ebp)
	movl	-76(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jg	L89
	fldl	-48(%ebp)
	fldl	LC2
	faddp	%st, %st(1)
	fldcw	-72(%ebp)
	fistpl	-76(%ebp)
	fldcw	-70(%ebp)
	movl	-76(%ebp), %eax
	cmpl	-64(%ebp), %eax
	jl	L89
	fldl	-48(%ebp)
	fldl	LC2
	faddp	%st, %st(1)
	fldcw	-72(%ebp)
	fistpl	-76(%ebp)
	fldcw	-70(%ebp)
	movl	-76(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jg	L89
	movb	$1, -50(%ebp)
L89:
	movl	$0, -84(%ebp)
	cmpb	$0, -49(%ebp)
	je	L90
	cmpb	$0, -50(%ebp)
	je	L90
	movl	$1, -84(%ebp)
L90:
	movl	-84(%ebp), %eax
	movl	%eax, -80(%ebp)
L75:
	movl	-80(%ebp), %eax
	leave
	ret
	.align 2
.globl __ZN5Actor10SortPointsEPii
	.def	__ZN5Actor10SortPointsEPii;	.scl	2;	.type	32;	.endef
__ZN5Actor10SortPointsEPii:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$16, %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$16, %eax
	movl	%eax, -8(%ebp)
L92:
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
L95:
	movl	16(%ebp), %eax
	decl	%eax
	cmpl	-16(%ebp), %eax
	jle	L94
	movl	-16(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	12(%ebp), %eax
	movl	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-16(%ebp), %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-16(%ebp), %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-20(%ebp), %edx
	movl	-4(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	imull	%eax, %ecx
	movl	-24(%ebp), %edx
	movl	-8(%ebp), %eax
	subl	%edx, %eax
	imull	%eax, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-28(%ebp), %edx
	movl	-4(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	imull	%eax, %ecx
	movl	-32(%ebp), %edx
	movl	-8(%ebp), %eax
	subl	%edx, %eax
	imull	%eax, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jge	L97
	movl	-16(%ebp), %eax
	leal	0(,%eax,8), %ecx
	movl	12(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%ecx,%edx)
	movl	-16(%ebp), %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	movl	-16(%ebp), %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	leal	8(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	movl	-16(%ebp), %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	leal	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	leal	-12(%ebp), %eax
	incl	(%eax)
L97:
	leal	-16(%ebp), %eax
	incl	(%eax)
	jmp	L95
L94:
	cmpl	$0, -12(%ebp)
	jle	L91
	jmp	L92
L91:
	leave
	ret
.lcomm _ZZN5Actor7IsOnFovEPiE6points,14800
	.align 2
.globl __ZN5Actor7IsOnFovEPi
	.def	__ZN5Actor7IsOnFovEPi;	.scl	2;	.type	32;	.endef
__ZN5Actor7IsOnFovEPi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$_ZZN5Actor7IsOnFovEPiE6points, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor12GetFovPointsEPi
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$16, %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$16, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -20(%ebp)
L100:
	movl	-4(%ebp), %eax
	decl	%eax
	cmpl	-20(%ebp), %eax
	jle	L101
	leal	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	sall	$3, %eax
	addl	$_ZZN5Actor7IsOnFovEPiE6points+8, %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	sall	$3, %eax
	addl	$_ZZN5Actor7IsOnFovEPiE6points, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor12IsOnTriangleEPiS0_S0_S0_
	testb	%al, %al
	je	L102
	movl	$1, -24(%ebp)
	jmp	L99
L102:
	leal	-20(%ebp), %eax
	incl	(%eax)
	jmp	L100
L101:
	movl	$0, -24(%ebp)
L99:
	movl	-24(%ebp), %eax
	leave
	ret
	.section	.text$_ZN5Actor12IsOnTriangleEPiS0_S0_S0_,"x"
	.linkonce discard
	.align 2
.globl __ZN5Actor12IsOnTriangleEPiS0_S0_S0_
	.def	__ZN5Actor12IsOnTriangleEPiS0_S0_S0_;	.scl	2;	.type	32;	.endef
__ZN5Actor12IsOnTriangleEPiS0_S0_S0_:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$0, -4(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor3DetEPiS0_S0_
	testl	%eax, %eax
	js	L105
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor3DetEPiS0_S0_
	testl	%eax, %eax
	js	L105
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor3DetEPiS0_S0_
	testl	%eax, %eax
	js	L105
	movl	$1, -4(%ebp)
L105:
	movl	-4(%ebp), %eax
	leave
	ret
	.section	.text$_ZN5Actor3DetEPiS0_S0_,"x"
	.linkonce discard
	.align 2
.globl __ZN5Actor3DetEPiS0_S0_
	.def	__ZN5Actor3DetEPiS0_S0_;	.scl	2;	.type	32;	.endef
__ZN5Actor3DetEPiS0_S0_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	movl	12(%ebp), %ecx
	addl	$4, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	(%ecx), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	8(%ebp), %ebx
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	(%ebx), %eax
	subl	%edx, %eax
	imull	%eax, %ecx
	movl	12(%ebp), %ebx
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	(%ebx), %eax
	movl	%eax, %esi
	subl	%edx, %esi
	movl	16(%ebp), %ebx
	addl	$4, %ebx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	(%ebx), %eax
	subl	%edx, %eax
	imull	%esi, %eax
	addl	%eax, %ecx
	movl	%ecx, %eax
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.lcomm _ZZN5Actor11UpdateLayerEP5LayerE6points,14800
	.text
	.align 2
.globl __ZN5Actor11UpdateLayerEP5Layer
	.def	__ZN5Actor11UpdateLayerEP5Layer;	.scl	2;	.type	32;	.endef
__ZN5Actor11UpdateLayerEP5Layer:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$200, %esp
	movl	$_ZZN5Actor11UpdateLayerEP5LayerE6points, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor12GetFovPointsEPi
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$16, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$16, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -28(%ebp)
L108:
	movl	-28(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jge	L107
	movl	$0, -32(%ebp)
L111:
	cmpl	$13, -32(%ebp)
	jg	L110
	movl	$0, -36(%ebp)
L114:
	cmpl	$19, -36(%ebp)
	jg	L113
	movl	-36(%ebp), %eax
	sall	$5, %eax
	addl	$16, %eax
	movl	%eax, -124(%ebp)
	movl	-32(%ebp), %eax
	sall	$5, %eax
	addl	$16, %eax
	movl	%eax, -128(%ebp)
	movl	-36(%ebp), %eax
	sall	$5, %eax
	incl	%eax
	movl	%eax, -120(%ebp)
	movl	-32(%ebp), %eax
	sall	$5, %eax
	incl	%eax
	movl	%eax, -116(%ebp)
	movl	-36(%ebp), %eax
	sall	$5, %eax
	addl	$30, %eax
	movl	%eax, -112(%ebp)
	movl	-32(%ebp), %eax
	sall	$5, %eax
	incl	%eax
	movl	%eax, -108(%ebp)
	movl	-36(%ebp), %eax
	sall	$5, %eax
	addl	$30, %eax
	movl	%eax, -104(%ebp)
	movl	-32(%ebp), %eax
	sall	$5, %eax
	addl	$30, %eax
	movl	%eax, -100(%ebp)
	movl	-36(%ebp), %eax
	sall	$5, %eax
	incl	%eax
	movl	%eax, -96(%ebp)
	movl	-32(%ebp), %eax
	sall	$5, %eax
	addl	$30, %eax
	movl	%eax, -92(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	-28(%ebp), %eax
	movl	_ZZN5Actor11UpdateLayerEP5LayerE6points(,%eax,8), %eax
	movl	%eax, -144(%ebp)
	movl	-28(%ebp), %eax
	movl	_ZZN5Actor11UpdateLayerEP5LayerE6points+4(,%eax,8), %eax
	movl	%eax, -140(%ebp)
	movl	$0, -156(%ebp)
	movl	$0, -160(%ebp)
L117:
	cmpl	$3, -160(%ebp)
	jg	L118
	movl	-160(%ebp), %eax
	movl	-120(%ebp,%eax,8), %eax
	movl	%eax, -184(%ebp)
	movl	-160(%ebp), %eax
	movl	-116(%ebp,%eax,8), %eax
	movl	%eax, -180(%ebp)
	movl	-160(%ebp), %eax
	incl	%eax
	andl	$3, %eax
	movl	-120(%ebp,%eax,8), %eax
	movl	%eax, -176(%ebp)
	movl	-160(%ebp), %eax
	incl	%eax
	andl	$3, %eax
	movl	-116(%ebp,%eax,8), %eax
	movl	%eax, -172(%ebp)
	leal	-184(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor28GetIntersectionBetween2LinesEPiS0_S0_
	testb	%al, %al
	je	L119
	leal	-156(%ebp), %eax
	incl	(%eax)
L119:
	leal	-160(%ebp), %eax
	incl	(%eax)
	jmp	L117
L118:
	cmpl	$0, -156(%ebp)
	jle	L116
	movl	12(%ebp), %ecx
	movl	-32(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-36(%ebp), %eax
	addl	%ecx, %eax
	addl	$286720, %eax
	movb	$0, (%eax)
L116:
	leal	-36(%ebp), %eax
	incl	(%eax)
	jmp	L114
L113:
	leal	-32(%ebp), %eax
	incl	(%eax)
	jmp	L111
L110:
	leal	-28(%ebp), %eax
	incl	(%eax)
	jmp	L108
L107:
	leave
	ret
.lcomm _ZZN5Actor11RenderCellsEP3GfxE6points,14800
	.align 2
.globl __ZN5Actor11RenderCellsEP3Gfx
	.def	__ZN5Actor11RenderCellsEP3Gfx;	.scl	2;	.type	32;	.endef
__ZN5Actor11RenderCellsEP3Gfx:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$152, %esp
	movl	$_ZZN5Actor11RenderCellsEP3GfxE6points, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor12GetFovPointsEPi
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$16, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$16, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -28(%ebp)
L123:
	movl	-12(%ebp), %eax
	decl	%eax
	cmpl	-28(%ebp), %eax
	jle	L122
	movl	$0, -32(%ebp)
L126:
	cmpl	$13, -32(%ebp)
	jg	L125
	movl	$0, -36(%ebp)
L129:
	cmpl	$19, -36(%ebp)
	jg	L128
	movl	-36(%ebp), %eax
	sall	$5, %eax
	addl	$16, %eax
	movl	%eax, -124(%ebp)
	movl	-32(%ebp), %eax
	sall	$5, %eax
	addl	$16, %eax
	movl	%eax, -128(%ebp)
	movl	-124(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	-128(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	-36(%ebp), %eax
	sall	$5, %eax
	incl	%eax
	movl	%eax, -112(%ebp)
	movl	-32(%ebp), %eax
	sall	$5, %eax
	incl	%eax
	movl	%eax, -108(%ebp)
	movl	-36(%ebp), %eax
	sall	$5, %eax
	addl	$16, %eax
	movl	%eax, -104(%ebp)
	movl	-32(%ebp), %eax
	sall	$5, %eax
	incl	%eax
	movl	%eax, -100(%ebp)
	movl	-36(%ebp), %eax
	sall	$5, %eax
	addl	$30, %eax
	movl	%eax, -96(%ebp)
	movl	-32(%ebp), %eax
	sall	$5, %eax
	incl	%eax
	movl	%eax, -92(%ebp)
	movl	-36(%ebp), %eax
	sall	$5, %eax
	incl	%eax
	movl	%eax, -88(%ebp)
	movl	-32(%ebp), %eax
	sall	$5, %eax
	addl	$16, %eax
	movl	%eax, -84(%ebp)
	movl	-36(%ebp), %eax
	sall	$5, %eax
	addl	$16, %eax
	movl	%eax, -80(%ebp)
	movl	-32(%ebp), %eax
	sall	$5, %eax
	addl	$16, %eax
	movl	%eax, -76(%ebp)
	movl	-36(%ebp), %eax
	sall	$5, %eax
	addl	$30, %eax
	movl	%eax, -72(%ebp)
	movl	-32(%ebp), %eax
	sall	$5, %eax
	addl	$16, %eax
	movl	%eax, -68(%ebp)
	movl	-36(%ebp), %eax
	sall	$5, %eax
	incl	%eax
	movl	%eax, -64(%ebp)
	movl	-32(%ebp), %eax
	sall	$5, %eax
	addl	$30, %eax
	movl	%eax, -60(%ebp)
	movl	-36(%ebp), %eax
	sall	$5, %eax
	addl	$16, %eax
	movl	%eax, -56(%ebp)
	movl	-32(%ebp), %eax
	sall	$5, %eax
	addl	$30, %eax
	movl	%eax, -52(%ebp)
	movl	-36(%ebp), %eax
	sall	$5, %eax
	addl	$30, %eax
	movl	%eax, -48(%ebp)
	movl	-32(%ebp), %eax
	sall	$5, %eax
	addl	$30, %eax
	movl	%eax, -44(%ebp)
	movl	$0, -132(%ebp)
L132:
	cmpl	$9, -132(%ebp)
	jg	L131
	leal	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	sall	$3, %eax
	addl	$_ZZN5Actor11RenderCellsEP3GfxE6points+8, %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	sall	$3, %eax
	addl	$_ZZN5Actor11RenderCellsEP3GfxE6points, %eax
	movl	%eax, 4(%esp)
	leal	-120(%ebp), %edx
	movl	-132(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor12IsOnTriangleEPiS0_S0_S0_
	leal	-132(%ebp), %eax
	incl	(%eax)
	jmp	L132
L131:
	leal	-36(%ebp), %eax
	incl	(%eax)
	jmp	L129
L128:
	leal	-32(%ebp), %eax
	incl	(%eax)
	jmp	L126
L125:
	leal	-28(%ebp), %eax
	incl	(%eax)
	jmp	L123
L122:
	leave
	ret
	.section .rdata,"dr"
	.align 8
LC4:
	.long	0
	.long	1074790400
	.align 8
LC5:
	.long	1413754136
	.long	1074340347
	.align 8
LC6:
	.long	0
	.long	1081507840
	.align 8
LC7:
	.long	0
	.long	1078853632
	.text
	.align 2
.globl __ZN5Actor10IsCullableEiiii
	.def	__ZN5Actor10IsCullableEiiii;	.scl	2;	.type	32;	.endef
__ZN5Actor10IsCullableEiiii:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$168, %esp
	fldl	LC4
	fstpl	-112(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -160(%ebp)
	cmpl	$2, -160(%ebp)
	je	L139
	cmpl	$2, -160(%ebp)
	jg	L143
	cmpl	$1, -160(%ebp)
	je	L138
	jmp	L142
L143:
	cmpl	$4, -160(%ebp)
	je	L140
	cmpl	$8, -160(%ebp)
	je	L141
	jmp	L142
L138:
	movl	$180, -116(%ebp)
	jmp	L137
L139:
	movl	$0, -116(%ebp)
	jmp	L137
L140:
	movl	$270, -116(%ebp)
	jmp	L137
L141:
	movl	$90, -116(%ebp)
	jmp	L137
L142:
	movl	$0, -116(%ebp)
L137:
	movl	-116(%ebp), %eax
	addl	%eax, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fldl	LC5
	fmulp	%st, %st(1)
	fldl	LC6
	fdivrp	%st, %st(1)
	fstpl	-128(%ebp)
	fldl	LC7
	fstpl	-136(%ebp)
	fldl	-128(%ebp)
	fstpl	(%esp)
	call	_cos
	fstpl	-144(%ebp)
	fldl	-128(%ebp)
	fstpl	(%esp)
	call	_sin
	fstpl	-152(%ebp)
	fldl	-128(%ebp)
	fstpl	(%esp)
	call	_cos
	fstpl	-8(%ebp)
	fldl	-128(%ebp)
	fstpl	(%esp)
	call	_sin
	fstpl	-16(%ebp)
	fldl	-112(%ebp)
	fchs
	fldl	-8(%ebp)
	fmull	-8(%ebp)
	fldl	-16(%ebp)
	fmull	-16(%ebp)
	faddp	%st, %st(1)
	fmulp	%st, %st(1)
	fstpl	-24(%ebp)
	fldl	-128(%ebp)
	fsubl	-136(%ebp)
	fstpl	(%esp)
	call	_sin
	fchs
	fstpl	-32(%ebp)
	fldl	-128(%ebp)
	fsubl	-136(%ebp)
	fstpl	(%esp)
	call	_cos
	fstpl	-40(%ebp)
	fldz
	fstpl	-48(%ebp)
	fldl	-128(%ebp)
	faddl	-136(%ebp)
	fstpl	(%esp)
	call	_sin
	fstpl	-56(%ebp)
	fldl	-128(%ebp)
	faddl	-136(%ebp)
	fstpl	(%esp)
	call	_cos
	fchs
	fstpl	-64(%ebp)
	fldz
	fstpl	-72(%ebp)
	fildl	12(%ebp)
	fmull	-8(%ebp)
	fildl	16(%ebp)
	fmull	-16(%ebp)
	faddp	%st, %st(1)
	faddl	-24(%ebp)
	fstpl	-80(%ebp)
	fildl	20(%ebp)
	fmull	-8(%ebp)
	fildl	16(%ebp)
	fmull	-16(%ebp)
	faddp	%st, %st(1)
	faddl	-24(%ebp)
	fstpl	-88(%ebp)
	fildl	20(%ebp)
	fmull	-8(%ebp)
	fildl	24(%ebp)
	fmull	-16(%ebp)
	faddp	%st, %st(1)
	faddl	-24(%ebp)
	fstpl	-96(%ebp)
	fildl	12(%ebp)
	fmull	-8(%ebp)
	fildl	24(%ebp)
	fmull	-16(%ebp)
	faddp	%st, %st(1)
	faddl	-24(%ebp)
	fstpl	-104(%ebp)
	fldl	-80(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jae	L145
	jmp	L144
L145:
	fldl	-88(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jae	L146
	jmp	L144
L146:
	fldl	-96(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jae	L147
	jmp	L144
L147:
	fldl	-104(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jae	L148
	jmp	L144
L148:
	movl	$1, -156(%ebp)
	jmp	L136
L144:
	fildl	12(%ebp)
	fmull	-32(%ebp)
	fildl	16(%ebp)
	fmull	-40(%ebp)
	faddp	%st, %st(1)
	faddl	-48(%ebp)
	fstpl	-80(%ebp)
	fildl	20(%ebp)
	fmull	-32(%ebp)
	fildl	16(%ebp)
	fmull	-40(%ebp)
	faddp	%st, %st(1)
	faddl	-48(%ebp)
	fstpl	-88(%ebp)
	fildl	20(%ebp)
	fmull	-32(%ebp)
	fildl	24(%ebp)
	fmull	-40(%ebp)
	faddp	%st, %st(1)
	faddl	-48(%ebp)
	fstpl	-96(%ebp)
	fildl	12(%ebp)
	fmull	-32(%ebp)
	fildl	24(%ebp)
	fmull	-40(%ebp)
	faddp	%st, %st(1)
	faddl	-48(%ebp)
	fstpl	-104(%ebp)
	fldl	-80(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jae	L150
	jmp	L149
L150:
	fldl	-88(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jae	L151
	jmp	L149
L151:
	fldl	-96(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jae	L152
	jmp	L149
L152:
	fldl	-104(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jae	L153
	jmp	L149
L153:
	movl	$1, -156(%ebp)
	jmp	L136
L149:
	fildl	12(%ebp)
	fmull	-56(%ebp)
	fildl	16(%ebp)
	fmull	-64(%ebp)
	faddp	%st, %st(1)
	faddl	-72(%ebp)
	fstpl	-80(%ebp)
	fildl	20(%ebp)
	fmull	-56(%ebp)
	fildl	16(%ebp)
	fmull	-64(%ebp)
	faddp	%st, %st(1)
	faddl	-72(%ebp)
	fstpl	-88(%ebp)
	fildl	20(%ebp)
	fmull	-56(%ebp)
	fildl	24(%ebp)
	fmull	-64(%ebp)
	faddp	%st, %st(1)
	faddl	-72(%ebp)
	fstpl	-96(%ebp)
	fildl	12(%ebp)
	fmull	-56(%ebp)
	fildl	24(%ebp)
	fmull	-64(%ebp)
	faddp	%st, %st(1)
	faddl	-72(%ebp)
	fstpl	-104(%ebp)
	fldl	-80(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jae	L155
	jmp	L154
L155:
	fldl	-88(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jae	L156
	jmp	L154
L156:
	fldl	-96(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jae	L157
	jmp	L154
L157:
	fldl	-104(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jae	L158
	jmp	L154
L158:
	movl	$1, -156(%ebp)
	jmp	L136
L154:
	movl	$0, -156(%ebp)
L136:
	movl	-156(%ebp), %eax
	leave
	ret
	.align 2
.globl __Z14AngleIsBetweeniii
	.def	__Z14AngleIsBetweeniii;	.scl	2;	.type	32;	.endef
__Z14AngleIsBetweeniii:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$12, %esp
	movl	8(%ebp), %ecx
	movl	$-1240768329, %eax
	imull	%ecx
	leal	(%ecx,%edx), %eax
	movl	%eax, %edx
	sarl	$8, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$360, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 8(%ebp)
	cmpl	$0, 8(%ebp)
	jns	L160
	addl	$360, 8(%ebp)
L160:
	movl	12(%ebp), %ecx
	movl	$-1240768329, %eax
	imull	%ecx
	leal	(%ecx,%edx), %eax
	movl	%eax, %edx
	sarl	$8, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$360, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 12(%ebp)
	cmpl	$0, 12(%ebp)
	jns	L161
	leal	12(%ebp), %eax
	addl	$360, (%eax)
L161:
	movl	16(%ebp), %ecx
	movl	$-1240768329, %eax
	imull	%ecx
	leal	(%ecx,%edx), %eax
	movl	%eax, %edx
	sarl	$8, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$360, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 16(%ebp)
	cmpl	$0, 16(%ebp)
	jns	L162
	leal	16(%ebp), %eax
	addl	$360, (%eax)
L162:
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jle	L163
	movl	$0, -8(%ebp)
	movl	8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jle	L165
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jge	L165
	jmp	L164
L165:
	movl	$1, -8(%ebp)
L164:
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	L159
L163:
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L166
	movl	8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jg	L166
	movl	$1, -12(%ebp)
L166:
	movl	-12(%ebp), %eax
	movl	%eax, -4(%ebp)
L159:
	movl	-4(%ebp), %eax
	leave
	ret
	.align 2
.globl __Z8DistancePiS_
	.def	__Z8DistancePiS_;	.scl	2;	.type	32;	.endef
__Z8DistancePiS_:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$20, %esp
	movl	12(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	(%ecx), %eax
	subl	%edx, %eax
	movl	%eax, %ebx
	imull	%eax, %ebx
	movl	12(%ebp), %ecx
	addl	$4, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	(%ecx), %eax
	subl	%edx, %eax
	imull	%eax, %eax
	leal	(%ebx,%eax), %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fstpl	(%esp)
	call	_sqrt
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.globl __a_
	.bss
	.align 8
__a_:
	.space 8
.globl __dist_
	.align 8
__dist_:
	.space 8
.globl __pos_
	.align 4
__pos_:
	.space 8
.globl __acos_
	.align 4
__acos_:
	.space 4
.globl __asin_
	.align 4
__asin_:
	.space 4
	.section .rdata,"dr"
	.align 8
LC12:
	.long	1413754136
	.long	1075388923
	.align 8
LC13:
	.long	0
	.long	1081507840
	.align 8
LC14:
	.long	442745336
	.long	1078765020
	.text
	.align 2
.globl __ZN5Actor8GetAngleEPi
	.def	__ZN5Actor8GetAngleEPi;	.scl	2;	.type	32;	.endef
__ZN5Actor8GetAngleEPi:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$136, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$16, %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$16, %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	(%eax), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	imull	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	-8(%ebp), %edx
	movl	(%eax), %eax
	subl	%edx, %eax
	imull	%eax, %eax
	leal	(%ecx,%eax), %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fstpl	(%esp)
	call	_sqrt
	fstpl	-24(%ebp)
	movl	12(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	(%eax), %eax
	subl	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fchs
	fdivl	-24(%ebp)
	fstpl	(%esp)
	call	_acos
	fstpl	-32(%ebp)
	fldl	-32(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	ja	L170
	jmp	L169
L170:
	fldl	-32(%ebp)
	fldl	LC12
	faddp	%st, %st(1)
	fstpl	-32(%ebp)
L169:
	fldl	-32(%ebp)
	fldl	LC12
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	ja	L172
	jmp	L171
L172:
	fldl	-32(%ebp)
	fldl	LC12
	fsubrp	%st, %st(1)
	fstpl	-32(%ebp)
L171:
	fldl	-32(%ebp)
	fldl	LC13
	fmulp	%st, %st(1)
	fldl	LC12
	fdivrp	%st, %st(1)
	fnstcw	-66(%ebp)
	movzwl	-66(%ebp), %eax
	orw	$3072, %ax
	movw	%ax, -68(%ebp)
	fldcw	-68(%ebp)
	fistpl	-12(%ebp)
	fldcw	-66(%ebp)
	fldl	-32(%ebp)
	fstpl	__a_
	fldl	-24(%ebp)
	fstpl	__dist_
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, __pos_
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, __pos_+4
	movl	12(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	(%eax), %eax
	subl	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivl	-24(%ebp)
	fstpl	(%esp)
	call	_acos
	fldl	LC14
	fmulp	%st, %st(1)
	fnstcw	-66(%ebp)
	movzwl	-66(%ebp), %eax
	orw	$3072, %ax
	movw	%ax, -68(%ebp)
	fldcw	-68(%ebp)
	fistpl	__acos_
	fldcw	-66(%ebp)
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	-8(%ebp), %edx
	movl	(%eax), %eax
	subl	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivl	-24(%ebp)
	fstpl	(%esp)
	call	_asin
	fldl	LC14
	fmulp	%st, %st(1)
	fnstcw	-66(%ebp)
	movzwl	-66(%ebp), %eax
	orw	$3072, %ax
	movw	%ax, -68(%ebp)
	fldcw	-68(%ebp)
	fistpl	__asin_
	fldcw	-66(%ebp)
	movl	12(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	(%eax), %eax
	subl	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivl	-24(%ebp)
	fstpl	(%esp)
	call	_acos
	fstpl	-40(%ebp)
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	-8(%ebp), %edx
	movl	(%eax), %eax
	subl	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fdivl	-24(%ebp)
	fstpl	(%esp)
	call	_asin
	fstpl	-48(%ebp)
	fldl	-40(%ebp)
	fstpl	(%esp)
	call	_cos
	fstpl	-80(%ebp)
	fldl	-40(%ebp)
	fstpl	(%esp)
	call	_cos
	fldl	-80(%ebp)
	fmulp	%st, %st(1)
	fstpl	-88(%ebp)
	fldl	-40(%ebp)
	fstpl	(%esp)
	call	_sin
	fstpl	-96(%ebp)
	fldl	-40(%ebp)
	fstpl	(%esp)
	call	_sin
	fmull	-96(%ebp)
	faddl	-88(%ebp)
	fstpl	-56(%ebp)
	fldl	-48(%ebp)
	fstpl	(%esp)
	call	_cos
	fstpl	-104(%ebp)
	fldl	-48(%ebp)
	fstpl	(%esp)
	call	_cos
	fldl	-104(%ebp)
	fmulp	%st, %st(1)
	fstpl	-112(%ebp)
	fldl	-48(%ebp)
	fstpl	(%esp)
	call	_sin
	fstpl	-120(%ebp)
	fldl	-48(%ebp)
	fstpl	(%esp)
	call	_sin
	fmull	-120(%ebp)
	faddl	-112(%ebp)
	fstpl	-64(%ebp)
	fld1
	fsubl	-56(%ebp)
	fld	%st(0)
	fmulp	%st, %st(1)
	fld1
	fsubl	-64(%ebp)
	fmul	%st(0), %st
	fucompp
	fnstsw	%ax
	sahf
	ja	L174
	jmp	L173
L174:
	movl	__acos_, %eax
	movl	%eax, -12(%ebp)
	jmp	L175
L173:
	movl	__asin_, %eax
	movl	%eax, -12(%ebp)
L175:
	movl	-12(%ebp), %eax
	leave
	ret
.lcomm _ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj,29600
.lcomm _ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue,59200
.lcomm _ZZN5Actor13GetFovPoints2EP3GfxPiE13pointsLineIdx,29600
	.section .rdata,"dr"
LC17:
	.ascii "w+\0"
LC18:
	.ascii "stdout.txt\0"
LC21:
	.ascii "a0 = %d\12\0"
LC22:
	.ascii "rad = %f\12\0"
LC23:
	.ascii "dist = %f\12\0"
LC24:
	.ascii "pos = %d %d\12\0"
LC25:
	.ascii "acos= %d asin=%d\12\0"
LC26:
	.ascii "a1 = %d\12\0"
LC27:
	.ascii "fovStartAngle = %d\12\0"
LC28:
	.ascii "fovEndAngle = %d\12\0"
	.align 4
LC29:
	.ascii "AngleIsBetween(a0, fovStartAngle, fovEndAngle) = %d\12\0"
	.align 4
LC30:
	.ascii "AngleIsBetween(a1, fovStartAngle, fovEndAngle) = %d\12\0"
LC31:
	.ascii "nPoints = %d\12\0"
	.align 8
LC19:
	.long	1413754136
	.long	1074340347
	.align 8
LC20:
	.long	0
	.long	1081507840
	.text
	.align 2
.globl __ZN5Actor13GetFovPoints2EP3GfxPi
	.def	__ZN5Actor13GetFovPoints2EP3GfxPi;	.scl	2;	.type	32;	.endef
__ZN5Actor13GetFovPoints2EP3GfxPi:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$308, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	$16, %eax
	movl	%eax, -44(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$16, %eax
	movl	%eax, -48(%ebp)
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	$LC17, 4(%esp)
	movl	$LC18, (%esp)
	call	_fopen
	movl	%eax, -56(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -212(%ebp)
	cmpl	$2, -212(%ebp)
	je	L179
	cmpl	$2, -212(%ebp)
	jg	L183
	cmpl	$1, -212(%ebp)
	je	L178
	jmp	L182
L183:
	cmpl	$4, -212(%ebp)
	je	L180
	cmpl	$8, -212(%ebp)
	je	L181
	jmp	L182
L178:
	movl	$180, -36(%ebp)
	jmp	L177
L179:
	movl	$0, -36(%ebp)
	jmp	L177
L180:
	movl	$270, -36(%ebp)
	jmp	L177
L181:
	movl	$90, -36(%ebp)
	jmp	L177
L182:
	movl	$0, -36(%ebp)
L177:
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	sarl	%edx
	movl	-36(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %edx
	movl	-60(%ebp), %eax
	addl	60(%edx), %eax
	movl	%eax, -64(%ebp)
	fildl	-52(%ebp)
	fstpl	-224(%ebp)
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fldl	LC19
	fmulp	%st, %st(1)
	fldl	LC20
	fdivrp	%st, %st(1)
	fstpl	(%esp)
	call	_cos
	fmull	-224(%ebp)
	fnstcw	-202(%ebp)
	movzwl	-202(%ebp), %eax
	orw	$3072, %ax
	movw	%ax, -204(%ebp)
	fldcw	-204(%ebp)
	fistpl	-208(%ebp)
	fldcw	-202(%ebp)
	movl	-208(%ebp), %eax
	addl	-44(%ebp), %eax
	movl	%eax, -32(%ebp)
	fildl	-52(%ebp)
	fstpl	-232(%ebp)
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fldl	LC19
	fmulp	%st, %st(1)
	fldl	LC20
	fdivrp	%st, %st(1)
	fstpl	(%esp)
	call	_sin
	fmull	-232(%ebp)
	fnstcw	-202(%ebp)
	movzwl	-202(%ebp), %eax
	orw	$3072, %ax
	movw	%ax, -204(%ebp)
	fldcw	-204(%ebp)
	fistpl	-208(%ebp)
	fldcw	-202(%ebp)
	movl	-208(%ebp), %eax
	addl	-48(%ebp), %eax
	movl	%eax, -28(%ebp)
	fildl	-52(%ebp)
	fstpl	-240(%ebp)
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	addl	$180, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fldl	LC19
	fmulp	%st, %st(1)
	fldl	LC20
	fdivrp	%st, %st(1)
	fstpl	(%esp)
	call	_cos
	fmull	-240(%ebp)
	fnstcw	-202(%ebp)
	movzwl	-202(%ebp), %eax
	orw	$3072, %ax
	movw	%ax, -204(%ebp)
	fldcw	-204(%ebp)
	fistpl	-208(%ebp)
	fldcw	-202(%ebp)
	movl	-208(%ebp), %eax
	addl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	fildl	-52(%ebp)
	fstpl	-248(%ebp)
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	addl	$180, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fldl	LC19
	fmulp	%st, %st(1)
	fldl	LC20
	fdivrp	%st, %st(1)
	fstpl	(%esp)
	call	_sin
	fmull	-248(%ebp)
	fnstcw	-202(%ebp)
	movzwl	-202(%ebp), %eax
	orw	$3072, %ax
	movw	%ax, -204(%ebp)
	fldcw	-204(%ebp)
	fistpl	-208(%ebp)
	fldcw	-202(%ebp)
	movl	-208(%ebp), %eax
	addl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	fildl	-52(%ebp)
	fstpl	-256(%ebp)
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	subl	$180, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fldl	LC19
	fmulp	%st, %st(1)
	fldl	LC20
	fdivrp	%st, %st(1)
	fstpl	(%esp)
	call	_cos
	fmull	-256(%ebp)
	fnstcw	-202(%ebp)
	movzwl	-202(%ebp), %eax
	orw	$3072, %ax
	movw	%ax, -204(%ebp)
	fldcw	-204(%ebp)
	fistpl	-208(%ebp)
	fldcw	-202(%ebp)
	movl	-208(%ebp), %eax
	addl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
	fildl	-52(%ebp)
	fstpl	-264(%ebp)
	movl	-36(%ebp), %eax
	addl	%eax, %eax
	subl	$180, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fldl	LC19
	fmulp	%st, %st(1)
	fldl	LC20
	fdivrp	%st, %st(1)
	fstpl	(%esp)
	call	_sin
	fmull	-264(%ebp)
	fnstcw	-202(%ebp)
	movzwl	-202(%ebp), %eax
	orw	$3072, %ax
	movw	%ax, -204(%ebp)
	fldcw	-204(%ebp)
	fistpl	-208(%ebp)
	fldcw	-202(%ebp)
	movl	-208(%ebp), %eax
	addl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -40(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN3Map10GetNbLinesEv
	movl	%eax, -68(%ebp)
	movl	$0, -72(%ebp)
L184:
	movl	-72(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jge	L185
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN3Map7GetLineEPii
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor8GetAngleEPi
	movl	%eax, -92(%ebp)
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC21, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	fldl	__a_
	fstpl	8(%esp)
	movl	$LC22, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	fldl	__dist_
	fstpl	8(%esp)
	movl	$LC23, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	__pos_+4, %eax
	movl	%eax, 12(%esp)
	movl	__pos_, %eax
	movl	%eax, 8(%esp)
	movl	$LC24, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	__asin_, %eax
	movl	%eax, 12(%esp)
	movl	__acos_, %eax
	movl	%eax, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	leal	-88(%ebp), %eax
	addl	$8, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor8GetAngleEPi
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC26, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	fldl	__a_
	fstpl	8(%esp)
	movl	$LC22, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	fldl	__dist_
	fstpl	8(%esp)
	movl	$LC23, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	__pos_+4, %eax
	movl	%eax, 12(%esp)
	movl	__pos_, %eax
	movl	%eax, 8(%esp)
	movl	$LC24, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	__asin_, %eax
	movl	%eax, 12(%esp)
	movl	__acos_, %eax
	movl	%eax, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC27, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC28, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z14AngleIsBetweeniii
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z14AngleIsBetweeniii
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	$LC30, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z14AngleIsBetweeniii
	testb	%al, %al
	jne	L188
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z14AngleIsBetweeniii
	testb	%al, %al
	jne	L188
	jmp	L186
L188:
	movl	-44(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	-88(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, -124(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	-80(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	-76(%ebp), %eax
	movl	%eax, -140(%ebp)
	leal	-136(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor28GetIntersectionBetween2LinesEPiS0_S0_
	leal	-152(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor28GetIntersectionBetween2LinesEPiS0_S0_
	movl	-32(%ebp), %edx
	leal	-104(%ebp), %eax
	subl	%edx, (%eax)
	movl	-28(%ebp), %edx
	leal	-100(%ebp), %eax
	subl	%edx, (%eax)
	movl	-32(%ebp), %edx
	leal	-112(%ebp), %eax
	subl	%edx, (%eax)
	movl	-28(%ebp), %edx
	leal	-108(%ebp), %eax
	subl	%edx, (%eax)
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	sall	$4, %edx
	movl	-104(%ebp), %eax
	movl	%eax, _ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj(%edx)
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	sall	$4, %edx
	movl	-100(%ebp), %eax
	movl	%eax, _ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj+4(%edx)
	movl	-40(%ebp), %eax
	movl	%eax, %ebx
	sall	$5, %ebx
	leal	-136(%ebp), %eax
	addl	$8, %eax
	movl	%eax, 4(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z8DistancePiS_
	fstpl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue(%ebx)
	movl	-40(%ebp), %eax
	movl	%eax, %ebx
	sall	$5, %ebx
	movl	-104(%ebp), %eax
	movl	%eax, %edx
	imull	-104(%ebp), %edx
	movl	-100(%ebp), %eax
	imull	-100(%ebp), %eax
	leal	(%edx,%eax), %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fstpl	(%esp)
	call	_sqrt
	fstpl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue+8(%ebx)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor8GetAngleEPi
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z14AngleIsBetweeniii
	testb	%al, %al
	je	L189
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	sall	$5, %edx
	movl	-40(%ebp), %eax
	sall	$5, %eax
	fldl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue+8(%eax)
	fchs
	fstpl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue+8(%edx)
L189:
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	sall	$4, %edx
	movl	-112(%ebp), %eax
	movl	%eax, _ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj+8(%edx)
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	sall	$4, %edx
	movl	-108(%ebp), %eax
	movl	%eax, _ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj+12(%edx)
	movl	-40(%ebp), %eax
	movl	%eax, %ebx
	sall	$5, %ebx
	leal	-152(%ebp), %eax
	addl	$8, %eax
	movl	%eax, 4(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z8DistancePiS_
	fstpl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue+16(%ebx)
	movl	-40(%ebp), %eax
	movl	%eax, %ebx
	sall	$5, %ebx
	movl	-112(%ebp), %eax
	movl	%eax, %edx
	imull	-112(%ebp), %edx
	movl	-108(%ebp), %eax
	imull	-108(%ebp), %eax
	leal	(%edx,%eax), %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fstpl	(%esp)
	call	_sqrt
	fstpl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue+24(%ebx)
	leal	-88(%ebp), %eax
	addl	$8, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5Actor8GetAngleEPi
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z14AngleIsBetweeniii
	testb	%al, %al
	je	L190
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	sall	$5, %edx
	movl	-40(%ebp), %eax
	sall	$5, %eax
	fldl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue+24(%eax)
	fchs
	fstpl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue+24(%edx)
L190:
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	sall	$4, %edx
	movl	-72(%ebp), %eax
	movl	%eax, _ZZN5Actor13GetFovPoints2EP3GfxPiE13pointsLineIdx(%edx)
	leal	-40(%ebp), %eax
	addl	$2, (%eax)
L186:
	leal	-72(%ebp), %eax
	incl	(%eax)
	jmp	L184
L185:
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC31, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
L191:
	movb	$0, -153(%ebp)
	movl	$0, -96(%ebp)
L194:
	movl	-96(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jge	L193
	movl	-96(%ebp), %eax
	movl	_ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj(,%eax,8), %eax
	movl	%eax, -112(%ebp)
	movl	-96(%ebp), %eax
	movl	_ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj+4(,%eax,8), %eax
	movl	%eax, -108(%ebp)
	movl	-96(%ebp), %eax
	movl	_ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj+8(,%eax,8), %eax
	movl	%eax, -104(%ebp)
	movl	-96(%ebp), %eax
	movl	_ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj+12(,%eax,8), %eax
	movl	%eax, -100(%ebp)
	movl	-96(%ebp), %eax
	sall	$4, %eax
	fldl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue(%eax)
	fstpl	-152(%ebp)
	movl	-96(%ebp), %eax
	sall	$4, %eax
	fldl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue+8(%eax)
	fstpl	-144(%ebp)
	movl	-96(%ebp), %eax
	sall	$4, %eax
	fldl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue+16(%eax)
	fstpl	-88(%ebp)
	movl	-96(%ebp), %eax
	sall	$4, %eax
	fldl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue+24(%eax)
	fstpl	-80(%ebp)
	movl	$0, -92(%ebp)
L197:
	movl	-92(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jge	L196
	movl	-92(%ebp), %eax
	movl	_ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj(,%eax,8), %eax
	movl	%eax, -168(%ebp)
	movl	-92(%ebp), %eax
	movl	_ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj+4(,%eax,8), %eax
	movl	%eax, -164(%ebp)
	movl	-92(%ebp), %eax
	movl	_ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj+8(,%eax,8), %eax
	movl	%eax, -176(%ebp)
	movl	-92(%ebp), %eax
	movl	_ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj+12(,%eax,8), %eax
	movl	%eax, -172(%ebp)
	movl	-92(%ebp), %eax
	sall	$4, %eax
	fldl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue(%eax)
	fstpl	-136(%ebp)
	movl	-92(%ebp), %eax
	sall	$4, %eax
	fldl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue+8(%eax)
	fstpl	-128(%ebp)
	movl	-92(%ebp), %eax
	sall	$4, %eax
	fldl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue+16(%eax)
	fstpl	-200(%ebp)
	movl	-92(%ebp), %eax
	sall	$4, %eax
	fldl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue+24(%eax)
	fstpl	-192(%ebp)
	movl	-96(%ebp), %eax
	cmpl	-92(%ebp), %eax
	je	L199
	fldl	-152(%ebp)
	fldl	-136(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	ja	L202
	jmp	L199
L202:
	fldl	-88(%ebp)
	fldl	-200(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	ja	L203
	jmp	L199
L203:
	fldl	-144(%ebp)
	fldl	-80(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	ja	L206
	jmp	L204
L206:
	fldl	-144(%ebp)
	fstpl	-272(%ebp)
	jmp	L205
L204:
	fldl	-80(%ebp)
	fstpl	-272(%ebp)
L205:
	fldl	-128(%ebp)
	fldl	-192(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	ja	L209
	jmp	L207
L209:
	fldl	-128(%ebp)
	fldl	-272(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	ja	L208
	jmp	L199
L207:
	fldl	-192(%ebp)
	fldl	-272(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	ja	L208
	jmp	L199
L208:
	fldl	-144(%ebp)
	fldl	-80(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	ja	L212
	jmp	L210
L212:
	fldl	-144(%ebp)
	fstpl	-280(%ebp)
	jmp	L211
L210:
	fldl	-80(%ebp)
	fstpl	-280(%ebp)
L211:
	fldl	-128(%ebp)
	fldl	-192(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	ja	L215
	jmp	L213
L215:
	fldl	-128(%ebp)
	fldl	-280(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	ja	L214
	jmp	L199
L213:
	fldl	-192(%ebp)
	fldl	-280(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	ja	L214
	jmp	L199
L214:
	movl	-92(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	_ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj-16(,%eax,8), %eax
	movl	%eax, _ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj(,%edx,8)
	movl	-92(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	_ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj-12(,%eax,8), %eax
	movl	%eax, _ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj+4(,%edx,8)
	movl	-92(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	_ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj-8(,%eax,8), %eax
	movl	%eax, _ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj+8(,%edx,8)
	movl	-92(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	_ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj-4(,%eax,8), %eax
	movl	%eax, _ZZN5Actor13GetFovPoints2EP3GfxPiE10pointsProj+12(,%edx,8)
	movl	-92(%ebp), %eax
	movl	%eax, %edx
	sall	$4, %edx
	movl	-40(%ebp), %eax
	sall	$4, %eax
	fldl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue-32(%eax)
	fstpl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue(%edx)
	movl	-92(%ebp), %eax
	movl	%eax, %edx
	sall	$4, %edx
	movl	-40(%ebp), %eax
	sall	$4, %eax
	fldl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue-24(%eax)
	fstpl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue+8(%edx)
	movl	-92(%ebp), %eax
	movl	%eax, %edx
	sall	$4, %edx
	movl	-40(%ebp), %eax
	sall	$4, %eax
	fldl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue-16(%eax)
	fstpl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue+16(%edx)
	movl	-92(%ebp), %eax
	movl	%eax, %edx
	sall	$4, %edx
	movl	-40(%ebp), %eax
	sall	$4, %eax
	fldl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue-8(%eax)
	fstpl	_ZZN5Actor13GetFovPoints2EP3GfxPiE11pointsValue+24(%edx)
	movl	-92(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	_ZZN5Actor13GetFovPoints2EP3GfxPiE13pointsLineIdx-16(,%eax,8), %eax
	movl	%eax, _ZZN5Actor13GetFovPoints2EP3GfxPiE13pointsLineIdx(,%edx,8)
	movb	$1, -153(%ebp)
	leal	-92(%ebp), %eax
	subl	$2, (%eax)
	leal	-40(%ebp), %eax
	subl	$2, (%eax)
L199:
	leal	-92(%ebp), %eax
	addl	$2, (%eax)
	jmp	L197
L196:
	leal	-96(%ebp), %eax
	addl	$2, (%eax)
	jmp	L194
L193:
	cmpb	$0, -153(%ebp)
	je	L192
	jmp	L191
L192:
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC31, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	$0, -96(%ebp)
L216:
	movl	-96(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jge	L217
	movl	-96(%ebp), %eax
	sall	$4, %eax
	movl	_ZZN5Actor13GetFovPoints2EP3GfxPiE13pointsLineIdx(%eax), %eax
	movl	%eax, -92(%ebp)
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN3Map7GetLineEPii
	movl	$16711680, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN3Gfx8SetColorEi
	movl	-140(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN3Gfx8DrawLineEiiii
	leal	-96(%ebp), %eax
	incl	(%eax)
	jmp	L216
L217:
	movl	-40(%ebp), %eax
	addl	$308, %esp
	popl	%ebx
	popl	%ebp
	ret
	.def	_fclose;	.scl	3;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_asin;	.scl	2;	.type	32;	.endef
	.def	_acos;	.scl	2;	.type	32;	.endef
	.def	_sqrt;	.scl	2;	.type	32;	.endef
	.def	_sin;	.scl	2;	.type	32;	.endef
	.def	_cos;	.scl	2;	.type	32;	.endef
	.def	__ZN5Actor12IsOnTriangleEPiS0_S0_S0_;	.scl	3;	.type	32;	.endef
	.def	__ZN5Actor28GetIntersectionBetween2LinesEPiS0_S0_;	.scl	3;	.type	32;	.endef
	.def	__ZN3Map7GetLineEPii;	.scl	3;	.type	32;	.endef
	.def	__ZN3Map10GetNbLinesEv;	.scl	3;	.type	32;	.endef
	.def	__ZN4Math3SinEd;	.scl	3;	.type	32;	.endef
	.def	__ZN4Math3CosEd;	.scl	3;	.type	32;	.endef
	.def	__ZN5Actor5PauseEv;	.scl	3;	.type	32;	.endef
	.def	__ZN3Map6HasColEP5Actor;	.scl	3;	.type	32;	.endef
	.def	__ZN5Actor4MoveEi;	.scl	3;	.type	32;	.endef
	.def	__ZN5Input9IsPressedEi;	.scl	3;	.type	32;	.endef
	.def	__ZN5Input6UpdateEi;	.scl	3;	.type	32;	.endef
	.def	__ZN5Input11GetPressureEv;	.scl	3;	.type	32;	.endef
	.def	__ZN5Actor10SortPointsEPii;	.scl	3;	.type	32;	.endef
	.def	__ZN5Actor18GetRayIntersectionEPid;	.scl	3;	.type	32;	.endef
	.def	__ZN3Gfx11FillPolygonEPii;	.scl	3;	.type	32;	.endef
	.def	__ZN3Gfx8SetAlphaEi;	.scl	3;	.type	32;	.endef
	.def	__ZN5Actor12GetFovPointsEPi;	.scl	3;	.type	32;	.endef
	.def	__ZN3Gfx8DrawLineEiiii;	.scl	3;	.type	32;	.endef
	.def	__ZN3Gfx10FillCircleEiiii;	.scl	3;	.type	32;	.endef
	.def	__ZN3Gfx8SetColorEi;	.scl	3;	.type	32;	.endef
	.def	__ZN5Actor9RenderFovEP3Gfx;	.scl	3;	.type	32;	.endef
	.def	_fopen;	.scl	3;	.type	32;	.endef
