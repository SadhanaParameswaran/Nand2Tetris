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
// 'function Sys.init 0' (Line 0)
(Sys.init)
// 'call Sys.main 0' (Line 1)
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
@Sys.main
0;JMP
(RETURN1)
// 'pop temp 1' (Line 2)
@SP
AM=M-1
D=M
@R6
M=D
// 'label LOOP' (Line 3)
(Sys.init$LOOP)
// 'goto LOOP' (Line 4)
@Sys.init$LOOP
0;JMP
// 'function Sys.main 0' (Line 5)
(Sys.main)
// 'push constant 123' (Line 6)
@123
D=A
@SP
A=M
M=D
@SP
M=M+1
// 'call Sys.add12 1' (Line 7)
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
@1
D=D-A
@5
D=D-A
@ARG
M=D	// ARG = SP-n-5
@SP
D=M
@LCL
M=D	// LCL = SP
@Sys.add12
0;JMP
(RETURN2)
// 'pop temp 0' (Line 8)
@SP
AM=M-1
D=M
@R5
M=D
// 'push constant 246' (Line 9)
@246
D=A
@SP
A=M
M=D
@SP
M=M+1
// 'return' (Line 10)
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
// 'function Sys.add12 3' (Line 11)
(Sys.add12)
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
@SP
A=M
M=0
@SP
M=M+1
// 'push argument 0' (Line 12)
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
// 'push constant 12' (Line 13)
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// 'add' (Line 14)
@SP
AM=M-1
D=M
@SP
AM=M-1
M=D+M
@SP
M=M+1
// 'return' (Line 15)
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