// 'function SimpleFunction.test 2' (Line 0)
(SimpleFunction.test)
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1
// 'push local 0' (Line 1)
@LCL
D=M
@R13
M=D
@0
D=A
(PUSH_LCL.0.LOOP)
D=D-1
@PUSH_LCL.0.END
D;JLT
@R13
M=M+1
@PUSH_LCL.0.LOOP
D;JGE
(PUSH_LCL.0.END)
@R13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'push local 1' (Line 2)
@LCL
D=M
@R13
M=D
@1
D=A
(PUSH_LCL.1.LOOP)
D=D-1
@PUSH_LCL.1.END
D;JLT
@R13
M=M+1
@PUSH_LCL.1.LOOP
D;JGE
(PUSH_LCL.1.END)
@R13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'add' (Line 3)
@SP
AM=M-1
D=M
@SP
AM=M-1
M=D+M
@SP
M=M+1
// 'not' (Line 4)
@SP
AM=M-1
M=!M
@SP
M=M+1
// 'push argument 0' (Line 5)
@ARG
D=M
@R13
M=D
@0
D=A
(PUSH_ARG.2.LOOP)
D=D-1
@PUSH_ARG.2.END
D;JLT
@R13
M=M+1
@PUSH_ARG.2.LOOP
D;JGE
(PUSH_ARG.2.END)
@R13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'add' (Line 6)
@SP
AM=M-1
D=M
@SP
AM=M-1
M=D+M
@SP
M=M+1
// 'push argument 1' (Line 7)
@ARG
D=M
@R13
M=D
@1
D=A
(PUSH_ARG.3.LOOP)
D=D-1
@PUSH_ARG.3.END
D;JLT
@R13
M=M+1
@PUSH_ARG.3.LOOP
D;JGE
(PUSH_ARG.3.END)
@R13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'sub' (Line 8)
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1
// 'return' (Line 9)
@LCL
D=M
@frame
M=D	// FRAME = LCL
@5
D=D-A
A=D
D=M
@ret
M=D	// RET = *(FRAME-5)
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D	// *ARG = pop
@ARG
D=M+1
@SP
M=D	// SP = ARG+1
@frame
D=M
@1
D=D-A
A=D
D=M
@THAT
M=D	// THAT = *(FRAME-1)
@frame
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D	// THIS = *(FRAME-2)
@frame
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D	// ARG = *(FRAME-3)
@frame
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D	// LCL = *(FRAME-4)
@ret
A=M
0;JMP	// JUMP TO Caller