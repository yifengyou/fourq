// func feMul(c, a, b *fieldElem)
TEXT ·feMul(SB),0,$0-24
	MOVQ a+8(FP), DI
	MOVQ b+16(FP), SI
	MOVQ $0, CX
	MOVQ 16(DI), AX
	MULQ 16(SI)
	MOVQ AX, R8
	MOVQ DX, R9
	MOVQ 16(DI), AX
	MULQ 24(SI)
	SHLQ $1, DX
	ADDQ DX, R8
	ADCQ AX, R9
	ADCQ $0, CX
	MOVQ 24(DI), AX
	MULQ 16(SI)
	SHLQ $1, DX
	ADDQ DX, R8
	ADCQ AX, R9
	ADCQ $0, CX
	MOVQ 24(DI), AX
	MULQ 24(SI)
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
	MOVQ 0(DI), AX
	MULQ 0(SI)
	ADDQ AX, R8
	ADCQ DX, R9
	ADCQ $0, CX
	MOVQ 0(DI), AX
	MULQ 8(SI)
	SHLQ $1, DX
	ADDQ DX, R8
	ADCQ AX, R9
	ADCQ $0, CX
	MOVQ 8(DI), AX
	MULQ 0(SI)
	SHLQ $1, DX
	ADDQ DX, R8
	ADCQ AX, R9
	ADCQ $0, CX
	MOVQ 8(DI), AX
	MULQ 8(SI)
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
	MOVQ 0(DI), AX
	MULQ 16(SI)
	MOVQ AX, R10
	MOVQ DX, R11
	MOVQ 0(DI), AX
	MULQ 24(SI)
	SHLQ $1, DX
	ADDQ DX, R10
	ADCQ AX, R11
	ADCQ $0, CX
	MOVQ 8(DI), AX
	MULQ 16(SI)
	SHLQ $1, DX
	ADDQ DX, R10
	ADCQ AX, R11
	ADCQ $0, CX
	MOVQ 8(DI), AX
	MULQ 24(SI)
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
	MOVQ 16(DI), AX
	MULQ 0(SI)
	ADDQ AX, R10
	ADCQ DX, R11
	ADCQ $0, CX
	MOVQ 16(DI), AX
	MULQ 8(SI)
	SHLQ $1, DX
	ADDQ DX, R10
	ADCQ AX, R11
	ADCQ $0, CX
	MOVQ 24(DI), AX
	MULQ 0(SI)
	SHLQ $1, DX
	ADDQ DX, R10
	ADCQ AX, R11
	ADCQ $0, CX
	MOVQ 24(DI), AX
	MULQ 8(SI)
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
	MOVQ c+0(FP), DI
	MOVQ R8, 0(DI)
	MOVQ R9, 8(DI)
	MOVQ R10, 16(DI)
	MOVQ R11, 24(DI)
	RET
