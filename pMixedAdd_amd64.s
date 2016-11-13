// func pMixedAdd(a, b *point)
TEXT ·pMixedAdd(SB),0,$96-16
	MOVQ a+0(FP), DI
	MOVQ b+8(FP), SI
	MOVQ 0(DI), AX
	MOVQ 8(DI), BX
	MOVQ 16(DI), CX
	MOVQ 24(DI), DX
	NOTQ AX
	NOTQ BX
	BTRQ $63, BX
	NOTQ CX
	NOTQ DX
	BTRQ $63, DX
	ADDQ 32(DI), AX
	ADCQ 40(DI), BX
	BTRQ $63, BX
	ADCQ $0, AX
	ADCQ $0, BX
	ADDQ 48(DI), CX
	ADCQ 56(DI), DX
	BTRQ $63, DX
	ADCQ $0, CX
	ADCQ $0, DX
	MOVQ AX, 0(SP)
	MOVQ BX, 8(SP)
	MOVQ CX, 16(SP)
	MOVQ DX, 24(SP)
	MOVQ 0(SI), R12
	MOVQ 8(SI), R13
	MOVQ 16(SI), R14
	MOVQ 24(SI), R15
	ADDQ 32(SI), R12
	ADCQ 40(SI), R13
	BTRQ $63, R13
	ADCQ $0, R12
	ADCQ $0, R13
	ADDQ 48(SI), R14
	ADCQ 56(SI), R15
	BTRQ $63, R15
	ADCQ $0, R14
	ADCQ $0, R15
		MOVQ $0, CX
		MOVQ 16(SP), AX
		MULQ R14
		MOVQ AX, R8
		MOVQ DX, R9
		MOVQ 16(SP), AX
		MULQ R15
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 24(SP), AX
		MULQ R14
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 24(SP), AX
		MULQ R15
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R9
		ADCQ CX, R8
		ADCQ $0, R9
		BTRQ $63, R9
		ADCQ $0, R8
		ADCQ $0, R9
		NOTQ R8
		NOTQ R9
		BTRQ $63, R9
		MOVQ $0, CX
		MOVQ 0(SP), AX
		MULQ R12
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		MOVQ 0(SP), AX
		MULQ R13
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 8(SP), AX
		MULQ R12
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 8(SP), AX
		MULQ R13
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R9
		ADCQ CX, R8
		ADCQ $0, R9
		BTRQ $63, R9
		ADCQ $0, R8
		ADCQ $0, R9
		MOVQ $0, CX
		MOVQ 0(SP), AX
		MULQ R14
		MOVQ AX, R10
		MOVQ DX, R11
		MOVQ 0(SP), AX
		MULQ R15
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 8(SP), AX
		MULQ R14
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 8(SP), AX
		MULQ R15
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R11
		ADCQ CX, R10
		ADCQ $0, R11
		BTRQ $63, R11
		ADCQ $0, R10
		ADCQ $0, R11
		MOVQ $0, CX
		MOVQ 16(SP), AX
		MULQ R12
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		MOVQ 16(SP), AX
		MULQ R13
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 24(SP), AX
		MULQ R12
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 24(SP), AX
		MULQ R13
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R11
		ADCQ CX, R10
		ADCQ $0, R11
		BTRQ $63, R11
		ADCQ $0, R10
		ADCQ $0, R11
		MOVQ R8, 0(SP)
		MOVQ R9, 8(SP)
		MOVQ R10, 16(SP)
		MOVQ R11, 24(SP)
	MOVQ 0(SI), AX
	MOVQ 8(SI), BX
	MOVQ 16(SI), CX
	MOVQ 24(SI), DX
	NOTQ AX
	NOTQ BX
	BTRQ $63, BX
	NOTQ CX
	NOTQ DX
	BTRQ $63, DX
	ADDQ 32(SI), AX
	ADCQ 40(SI), BX
	BTRQ $63, BX
	ADCQ $0, AX
	ADCQ $0, BX
	ADDQ 48(SI), CX
	ADCQ 56(SI), DX
	BTRQ $63, DX
	ADCQ $0, CX
	ADCQ $0, DX
	MOVQ AX, 32(SP)
	MOVQ BX, 40(SP)
	MOVQ CX, 48(SP)
	MOVQ DX, 56(SP)
	MOVQ 0(DI), R12
	MOVQ 8(DI), R13
	MOVQ 16(DI), R14
	MOVQ 24(DI), R15
	ADDQ 32(DI), R12
	ADCQ 40(DI), R13
	BTRQ $63, R13
	ADCQ $0, R12
	ADCQ $0, R13
	ADDQ 48(DI), R14
	ADCQ 56(DI), R15
	BTRQ $63, R15
	ADCQ $0, R14
	ADCQ $0, R15
		MOVQ $0, CX
		MOVQ 48(SP), AX
		MULQ R14
		MOVQ AX, R8
		MOVQ DX, R9
		MOVQ 48(SP), AX
		MULQ R15
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 56(SP), AX
		MULQ R14
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 56(SP), AX
		MULQ R15
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R9
		ADCQ CX, R8
		ADCQ $0, R9
		BTRQ $63, R9
		ADCQ $0, R8
		ADCQ $0, R9
		NOTQ R8
		NOTQ R9
		BTRQ $63, R9
		MOVQ $0, CX
		MOVQ 32(SP), AX
		MULQ R12
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		MOVQ 32(SP), AX
		MULQ R13
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 40(SP), AX
		MULQ R12
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 40(SP), AX
		MULQ R13
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R9
		ADCQ CX, R8
		ADCQ $0, R9
		BTRQ $63, R9
		ADCQ $0, R8
		ADCQ $0, R9
		MOVQ $0, CX
		MOVQ 32(SP), AX
		MULQ R14
		MOVQ AX, R10
		MOVQ DX, R11
		MOVQ 32(SP), AX
		MULQ R15
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 40(SP), AX
		MULQ R14
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 40(SP), AX
		MULQ R15
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R11
		ADCQ CX, R10
		ADCQ $0, R11
		BTRQ $63, R11
		ADCQ $0, R10
		ADCQ $0, R11
		MOVQ $0, CX
		MOVQ 48(SP), AX
		MULQ R12
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		MOVQ 48(SP), AX
		MULQ R13
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 56(SP), AX
		MULQ R12
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 56(SP), AX
		MULQ R13
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R11
		ADCQ CX, R10
		ADCQ $0, R11
		BTRQ $63, R11
		ADCQ $0, R10
		ADCQ $0, R11
		MOVQ R8, 32(SP)
		MOVQ R9, 40(SP)
		MOVQ R10, 48(SP)
		MOVQ R11, 56(SP)
		MOVQ $0, CX
		MOVQ 112(DI), AX
		MULQ 80(SI)
		MOVQ AX, R8
		MOVQ DX, R9
		MOVQ 112(DI), AX
		MULQ 88(SI)
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 120(DI), AX
		MULQ 80(SI)
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 120(DI), AX
		MULQ 88(SI)
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R9
		ADCQ CX, R8
		ADCQ $0, R9
		BTRQ $63, R9
		ADCQ $0, R8
		ADCQ $0, R9
		NOTQ R8
		NOTQ R9
		BTRQ $63, R9
		MOVQ $0, CX
		MOVQ 96(DI), AX
		MULQ 64(SI)
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		MOVQ 96(DI), AX
		MULQ 72(SI)
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 104(DI), AX
		MULQ 64(SI)
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 104(DI), AX
		MULQ 72(SI)
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R9
		ADCQ CX, R8
		ADCQ $0, R9
		BTRQ $63, R9
		ADCQ $0, R8
		ADCQ $0, R9
		MOVQ $0, CX
		MOVQ 96(DI), AX
		MULQ 80(SI)
		MOVQ AX, R10
		MOVQ DX, R11
		MOVQ 96(DI), AX
		MULQ 88(SI)
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 104(DI), AX
		MULQ 80(SI)
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 104(DI), AX
		MULQ 88(SI)
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R11
		ADCQ CX, R10
		ADCQ $0, R11
		BTRQ $63, R11
		ADCQ $0, R10
		ADCQ $0, R11
		MOVQ $0, CX
		MOVQ 112(DI), AX
		MULQ 64(SI)
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		MOVQ 112(DI), AX
		MULQ 72(SI)
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 120(DI), AX
		MULQ 64(SI)
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 120(DI), AX
		MULQ 72(SI)
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R11
		ADCQ CX, R10
		ADCQ $0, R11
		BTRQ $63, R11
		ADCQ $0, R10
		ADCQ $0, R11
	SHLQ $1, R9
	SHLQ $1, R8
	ADCQ $0, R9
	BTRQ $63, R9
	ADCQ $0, R8
	SHLQ $1, R11
	SHLQ $1, R10
	ADCQ $0, R11
	BTRQ $63, R11
	ADCQ $0, R10
	MOVQ 64(DI), R12
	MOVQ 72(DI), R13
	MOVQ 80(DI), R14
	MOVQ 88(DI), R15
	SHLQ $1, R13
	SHLQ $1, R12
	ADCQ $0, R13
	BTRQ $63, R13
	ADCQ $0, R12
	SHLQ $1, R15
	SHLQ $1, R14
	ADCQ $0, R15
	BTRQ $63, R15
	ADCQ $0, R14
	MOVQ R8, AX
	MOVQ R9, BX
	MOVQ R10, CX
	MOVQ R11, DX
	ADDQ R12, AX
	ADCQ R13, BX
	BTRQ $63, BX
	ADCQ $0, AX
	ADCQ $0, BX
	ADDQ R14, CX
	ADCQ R15, DX
	BTRQ $63, DX
	ADCQ $0, CX
	ADCQ $0, DX
	MOVQ AX, 64(SP)
	MOVQ BX, 72(SP)
	MOVQ CX, 80(SP)
	MOVQ DX, 88(SP)
	NOTQ R8
	NOTQ R9
	BTRQ $63, R9
	NOTQ R10
	NOTQ R11
	BTRQ $63, R11
	ADDQ R8, R12
	ADCQ R9, R13
	BTRQ $63, R13
	ADCQ $0, R12
	ADCQ $0, R13
	ADDQ R10, R14
	ADCQ R11, R15
	BTRQ $63, R15
	ADCQ $0, R14
	ADCQ $0, R15
	MOVQ 0(SP), AX
	MOVQ 8(SP), BX
	MOVQ 16(SP), CX
	MOVQ 24(SP), DX
	MOVQ 32(SP), R8
	MOVQ 40(SP), R9
	MOVQ 48(SP), R10
	MOVQ 56(SP), R11
	ADDQ AX, R8
	ADCQ BX, R9
	BTRQ $63, R9
	ADCQ $0, R8
	ADCQ $0, R9
	ADDQ CX, R10
	ADCQ DX, R11
	BTRQ $63, R11
	ADCQ $0, R10
	ADCQ $0, R11
	NOTQ AX
	NOTQ BX
	BTRQ $63, BX
	NOTQ CX
	NOTQ DX
	BTRQ $63, DX
	ADDQ 32(SP), AX
	ADCQ 40(SP), BX
	BTRQ $63, BX
	ADCQ $0, AX
	ADCQ $0, BX
	ADDQ 48(SP), CX
	ADCQ 56(SP), DX
	BTRQ $63, DX
	ADCQ $0, CX
	ADCQ $0, DX
	MOVQ AX, 0(SP)
	MOVQ BX, 8(SP)
	MOVQ CX, 16(SP)
	MOVQ DX, 24(SP)
	MOVQ R8, 32(SP)
	MOVQ R9, 40(SP)
	MOVQ R10, 48(SP)
	MOVQ R11, 56(SP)
		MOVQ $0, CX
		MOVQ 80(SP), AX
		MULQ 16(SP)
		MOVQ AX, R8
		MOVQ DX, R9
		MOVQ 80(SP), AX
		MULQ 24(SP)
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 88(SP), AX
		MULQ 16(SP)
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 88(SP), AX
		MULQ 24(SP)
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R9
		ADCQ CX, R8
		ADCQ $0, R9
		BTRQ $63, R9
		ADCQ $0, R8
		ADCQ $0, R9
		NOTQ R8
		NOTQ R9
		BTRQ $63, R9
		MOVQ $0, CX
		MOVQ 64(SP), AX
		MULQ 0(SP)
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		MOVQ 64(SP), AX
		MULQ 8(SP)
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 72(SP), AX
		MULQ 0(SP)
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 72(SP), AX
		MULQ 8(SP)
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R9
		ADCQ CX, R8
		ADCQ $0, R9
		BTRQ $63, R9
		ADCQ $0, R8
		ADCQ $0, R9
		MOVQ $0, CX
		MOVQ 64(SP), AX
		MULQ 16(SP)
		MOVQ AX, R10
		MOVQ DX, R11
		MOVQ 64(SP), AX
		MULQ 24(SP)
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 72(SP), AX
		MULQ 16(SP)
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 72(SP), AX
		MULQ 24(SP)
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R11
		ADCQ CX, R10
		ADCQ $0, R11
		BTRQ $63, R11
		ADCQ $0, R10
		ADCQ $0, R11
		MOVQ $0, CX
		MOVQ 80(SP), AX
		MULQ 0(SP)
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		MOVQ 80(SP), AX
		MULQ 8(SP)
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 88(SP), AX
		MULQ 0(SP)
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 88(SP), AX
		MULQ 8(SP)
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R11
		ADCQ CX, R10
		ADCQ $0, R11
		BTRQ $63, R11
		ADCQ $0, R10
		ADCQ $0, R11
		MOVQ R8, 0(DI)
		MOVQ R9, 8(DI)
		MOVQ R10, 16(DI)
		MOVQ R11, 24(DI)
		MOVQ $0, CX
		MOVQ 48(SP), AX
		MULQ R14
		MOVQ AX, R8
		MOVQ DX, R9
		MOVQ 48(SP), AX
		MULQ R15
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 56(SP), AX
		MULQ R14
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 56(SP), AX
		MULQ R15
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R9
		ADCQ CX, R8
		ADCQ $0, R9
		BTRQ $63, R9
		ADCQ $0, R8
		ADCQ $0, R9
		NOTQ R8
		NOTQ R9
		BTRQ $63, R9
		MOVQ $0, CX
		MOVQ 32(SP), AX
		MULQ R12
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		MOVQ 32(SP), AX
		MULQ R13
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 40(SP), AX
		MULQ R12
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 40(SP), AX
		MULQ R13
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R9
		ADCQ CX, R8
		ADCQ $0, R9
		BTRQ $63, R9
		ADCQ $0, R8
		ADCQ $0, R9
		MOVQ $0, CX
		MOVQ 32(SP), AX
		MULQ R14
		MOVQ AX, R10
		MOVQ DX, R11
		MOVQ 32(SP), AX
		MULQ R15
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 40(SP), AX
		MULQ R14
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 40(SP), AX
		MULQ R15
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R11
		ADCQ CX, R10
		ADCQ $0, R11
		BTRQ $63, R11
		ADCQ $0, R10
		ADCQ $0, R11
		MOVQ $0, CX
		MOVQ 48(SP), AX
		MULQ R12
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		MOVQ 48(SP), AX
		MULQ R13
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 56(SP), AX
		MULQ R12
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 56(SP), AX
		MULQ R13
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R11
		ADCQ CX, R10
		ADCQ $0, R11
		BTRQ $63, R11
		ADCQ $0, R10
		ADCQ $0, R11
		MOVQ R8, 32(DI)
		MOVQ R9, 40(DI)
		MOVQ R10, 48(DI)
		MOVQ R11, 56(DI)
		MOVQ $0, CX
		MOVQ 80(SP), AX
		MULQ R14
		MOVQ AX, R8
		MOVQ DX, R9
		MOVQ 80(SP), AX
		MULQ R15
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 88(SP), AX
		MULQ R14
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 88(SP), AX
		MULQ R15
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R9
		ADCQ CX, R8
		ADCQ $0, R9
		BTRQ $63, R9
		ADCQ $0, R8
		ADCQ $0, R9
		NOTQ R8
		NOTQ R9
		BTRQ $63, R9
		MOVQ $0, CX
		MOVQ 64(SP), AX
		MULQ R12
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		MOVQ 64(SP), AX
		MULQ R13
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 72(SP), AX
		MULQ R12
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 72(SP), AX
		MULQ R13
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R9
		ADCQ CX, R8
		ADCQ $0, R9
		BTRQ $63, R9
		ADCQ $0, R8
		ADCQ $0, R9
		MOVQ $0, CX
		MOVQ 64(SP), AX
		MULQ R14
		MOVQ AX, R10
		MOVQ DX, R11
		MOVQ 64(SP), AX
		MULQ R15
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 72(SP), AX
		MULQ R14
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 72(SP), AX
		MULQ R15
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R11
		ADCQ CX, R10
		ADCQ $0, R11
		BTRQ $63, R11
		ADCQ $0, R10
		ADCQ $0, R11
		MOVQ $0, CX
		MOVQ 80(SP), AX
		MULQ R12
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		MOVQ 80(SP), AX
		MULQ R13
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 88(SP), AX
		MULQ R12
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 88(SP), AX
		MULQ R13
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R11
		ADCQ CX, R10
		ADCQ $0, R11
		BTRQ $63, R11
		ADCQ $0, R10
		ADCQ $0, R11
		MOVQ R8, 64(DI)
		MOVQ R9, 72(DI)
		MOVQ R10, 80(DI)
		MOVQ R11, 88(DI)
		MOVQ $0, CX
		MOVQ 16(SP), AX
		MULQ 48(SP)
		MOVQ AX, R8
		MOVQ DX, R9
		MOVQ 16(SP), AX
		MULQ 56(SP)
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 24(SP), AX
		MULQ 48(SP)
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 24(SP), AX
		MULQ 56(SP)
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R9
		ADCQ CX, R8
		ADCQ $0, R9
		BTRQ $63, R9
		ADCQ $0, R8
		ADCQ $0, R9
		NOTQ R8
		NOTQ R9
		BTRQ $63, R9
		MOVQ $0, CX
		MOVQ 0(SP), AX
		MULQ 32(SP)
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		MOVQ 0(SP), AX
		MULQ 40(SP)
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 8(SP), AX
		MULQ 32(SP)
		SHLQ $1, DX
		ADDQ DX, R8
		ADCQ AX, R9
		ADCQ $0, CX
		MOVQ 8(SP), AX
		MULQ 40(SP)
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R8
		ADCQ DX, R9
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R9
		ADCQ CX, R8
		ADCQ $0, R9
		BTRQ $63, R9
		ADCQ $0, R8
		ADCQ $0, R9
		MOVQ $0, CX
		MOVQ 0(SP), AX
		MULQ 48(SP)
		MOVQ AX, R10
		MOVQ DX, R11
		MOVQ 0(SP), AX
		MULQ 56(SP)
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 8(SP), AX
		MULQ 48(SP)
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 8(SP), AX
		MULQ 56(SP)
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R11
		ADCQ CX, R10
		ADCQ $0, R11
		BTRQ $63, R11
		ADCQ $0, R10
		ADCQ $0, R11
		MOVQ $0, CX
		MOVQ 16(SP), AX
		MULQ 32(SP)
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		MOVQ 16(SP), AX
		MULQ 40(SP)
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 24(SP), AX
		MULQ 32(SP)
		SHLQ $1, DX
		ADDQ DX, R10
		ADCQ AX, R11
		ADCQ $0, CX
		MOVQ 24(SP), AX
		MULQ 40(SP)
		SHLQ $1, DX
		SHLQ $1, AX
		ADCQ $0, DX
		ADDQ AX, R10
		ADCQ DX, R11
		ADCQ $0, CX
		SHLQ $1, CX
		BTRQ $63, R11
		ADCQ CX, R10
		ADCQ $0, R11
		BTRQ $63, R11
		ADCQ $0, R10
		ADCQ $0, R11
		MOVQ R8, 96(DI)
		MOVQ R9, 104(DI)
		MOVQ R10, 112(DI)
		MOVQ R11, 120(DI)
	RET
