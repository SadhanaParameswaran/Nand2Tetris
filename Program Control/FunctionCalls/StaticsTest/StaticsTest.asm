// bootstrap
@256
D=A
@SP
M=D
@RETURN0
D=A
@SP
A=M
M=D
@SP
M=M+1	// push return-address
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1	// push LCL
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1	// push ARG
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THIS
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THAT
@SP
D=M
@0
D=D-A
@5
D=D-A
@ARG
M=D	// ARG = SP-n-5
@SP
D=M
@LCL
M=D	// LCL = SP
@Sys.init
0;JMP
(RETURN0)
// 'function Class1.set 0' (Line 0)
(Class1.set)
// 'push argument 0' (Line 1)
@0
D=A
@ARG
A=M
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'pop static 0' (Line 2)
@SP
AM=M-1
D=M
@Class1.0
M=D
// 'push argument 1' (Line 3)
@1
D=A
@ARG
A=M
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'pop static 1' (Line 4)
@SP
AM=M-1
D=M
@Class1.1
M=D
// 'push constant 0' (Line 5)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// 'return' (Line 6)
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
// 'function Class1.get 0' (Line 7)
(Class1.get)
// 'push static 0' (Line 8)
@Class1.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'push static 1' (Line 9)
@Class1.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'sub' (Line 10)
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1
// 'return' (Line 11)
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
// 'function Class2.set 0' (Line 0)
(Class2.set)
// 'push argument 0' (Line 1)
@0
D=A
@ARG
A=M
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'pop static 0' (Line 2)
@SP
AM=M-1
D=M
@Class2.0
M=D
// 'push argument 1' (Line 3)
@1
D=A
@ARG
A=M
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'pop static 1' (Line 4)
@SP
AM=M-1
D=M
@Class2.1
M=D
// 'push constant 0' (Line 5)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// 'return' (Line 6)
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
// 'function Class2.get 0' (Line 7)
(Class2.get)
// 'push static 0' (Line 8)
@Class2.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'push static 1' (Line 9)
@Class2.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'sub' (Line 10)
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1
// 'return' (Line 11)
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
// 'function Sys.init 0' (Line 0)
(Sys.init)
// 'push constant 6' (Line 1)
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// 'push constant 8' (Line 2)
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// 'call Class1.set 2' (Line 3)
@RETURN1
D=A
@SP
A=M
M=D
@SP
M=M+1	// push return-address
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1	// push LCL
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1	// push ARG
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THIS
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THAT
@SP
D=M
@2
D=D-A
@5
D=D-A
@ARG
M=D	// ARG = SP-n-5
@SP
D=M
@LCL
M=D	// LCL = SP
@Class1.set
0;JMP
(RETURN1)
// 'pop temp 0' (Line 4)
@SP
AM=M-1
D=M
@R5
M=D
// 'push constant 23' (Line 5)
@23
D=A
@SP
A=M
M=D
@SP
M=M+1
// 'push constant 15' (Line 6)
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// 'call Class2.set 2' (Line 7)
@RETURN2
D=A
@SP
A=M
M=D
@SP
M=M+1	// push return-address
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1	// push LCL
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1	// push ARG
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THIS
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THAT
@SP
D=M
@2
D=D-A
@5
D=D-A
@ARG
M=D	// ARG = SP-n-5
@SP
D=M
@LCL
M=D	// LCL = SP
@Class2.set
0;JMP
(RETURN2)
// 'pop temp 0' (Line 8)
@SP
AM=M-1
D=M
@R5
M=D
// 'call Class1.get 0' (Line 9)
@RETURN3
D=A
@SP
A=M
M=D
@SP
M=M+1	// push return-address
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1	// push LCL
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1	// push ARG
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THIS
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THAT
@SP
D=M
@0
D=D-A
@5
D=D-A
@ARG
M=D	// ARG = SP-n-5
@SP
D=M
@LCL
M=D	// LCL = SP
@Class1.get
0;JMP
(RETURN3)
// 'call Class2.get 0' (Line 10)
@RETURN4
D=A
@SP
A=M
M=D
@SP
M=M+1	// push return-address
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1	// push LCL
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1	// push ARG
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THIS
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1	// push THAT
@SP
D=M
@0
D=D-A
@5
D=D-A
@ARG
M=D	// ARG = SP-n-5
@SP
D=M
@LCL
M=D	// LCL = SP
@Class2.get
0;JMP
(RETURN4)
// 'label WHILE' (Line 11)
(Sys.init$WHILE)
// 'goto WHILE' (Line 12)
@Sys.init$WHILE
0;JMP