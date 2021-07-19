	.arch armv5t
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"smin.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	Smin
	.syntax unified
	.arm
	.fpu softvfp
	.type	Smin, %function
Smin:
.LFB0:
	.file 1 "smin.c"
	.loc 1 1 26
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	.loc 1 2 9
	.loc 1 3 2
	// THIS CODE IS WRITTEN BY BACHOTTI SAI KRISHNA SHANMUKH EE19B009
	// Start of Code
	push {r4-r11}		// Stack management - pushing r4-11 used in main to stack
	sub r1,r1,#6		// setting r1 to (n-5)-1, higest index for which S can be valid
	mov r2,#1		// initialising i to 1
	ldmia r0,{r3,r4,r5,r6,r7,r8}	// loading first 5 values of array to r3-8 resp.
	sub r4,r4,r3	
	sub r6,r6,r5
	sub r8,r8,r7
	add r6,r6,r4
	add r8,r8,r6		// r8 has S0
	mov r9,r8		// r9 has S0 too
	sub r10,r10,r10	// intialise r10 to 0
.L2:
	ldr r3,[r0],#4		// r3 has a[i-1] and r0 points to &a[i]
	ldr r4,[r0,#20]	// r4 has a[i+5] and r0 still points to &a[i]
	sub r4,r4,r3		
	sub r8,r4,r8		// r8 is Si, Si = a[i+5] - a[i-1] -Si-1
	cmp r8,r9		
	movlt r9,r8		// r9 takes values of least Si until ith iter
	movlt r10,r2		// r10 takes index for which Si is least
	add r2,r2,#1		// incrementing index
	cmp r2,r1		
	ble .L2		// if i exceeds max index then exit from loop else be in loop

	mov r0,r10		// return value must be in r0
	pop {r4-r11}		// registers used in main are restored to their values
	// End of code
	add	sp, fp, #0	
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE0:
	.size	Smin, .-Smin
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x64
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF0
	.byte	0xc
	.4byte	.LASF1
	.4byte	.LASF2
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.4byte	0x5a
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a
	.uleb128 0x3
	.ascii	"a\000"
	.byte	0x1
	.byte	0x1
	.byte	0xf
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3
	.ascii	"b\000"
	.byte	0x1
	.byte	0x1
	.byte	0x18
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5a
	.byte	0
	.section	.debug_abbrev,"",%progbits
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
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF2:
	.ascii	"/home/shanmukh/Documents/ee2016\000"
.LASF3:
	.ascii	"Smin\000"
.LASF1:
	.ascii	"smin.c\000"
.LASF0:
	.ascii	"GNU C17 9.3.0 -mfloat-abi=soft -mtls-dialect=gnu -m"
	.ascii	"arm -march=armv5t -g -fstack-protector-strong\000"
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
