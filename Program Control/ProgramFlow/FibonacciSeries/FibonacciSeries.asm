// 'push argument 1' (Line 0)
@ARG
D=M
@R13
M=D
@1
D=A
(PUSH_ARG.0.LOOP)
D=D-1
@PUSH_ARG.0.END
D;JLT
@R13
M=M+1
@PUSH_ARG.0.LOOP
D;JGE
(PUSH_ARG.0.END)
@R13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'pop pointer 1' (Line 1)
@SP
AM=M-1
D=M
@R4
M=D
// 'push constant 0' (Line 2)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// 'pop that 0' (Line 3)
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@R14
M=D
@0
D=A
@THAT
(POP_THAT.1.LOOP)
D=D-1
@POP_THAT.1.END
D;JLT
@R14
M=M+1
@POP_THAT.1.LOOP
D;JGE
(POP_THAT.1.END)
@R13
D=M
@R14
A=M
M=D
// 'push constant 1' (Line 4)
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// 'pop that 1' (Line 5)
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@R14
M=D
@1
D=A
@THAT
(POP_THAT.2.LOOP)
D=D-1
@POP_THAT.2.END
D;JLT
@R14
M=M+1
@POP_THAT.2.LOOP
D;JGE
(POP_THAT.2.END)
@R13
D=M
@R14
A=M
M=D
// 'push argument 0' (Line 6)
@ARG
D=M
@R13
M=D
@0
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
// 'push constant 2' (Line 7)
@2
D=A
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
// 'pop argument 0' (Line 9)
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@R14
M=D
@0
D=A
@ARG
(POP_ARG.4.LOOP)
D=D-1
@POP_ARG.4.END
D;JLT
@R14
M=M+1
@POP_ARG.4.LOOP
D;JGE
(POP_ARG.4.END)
@R13
D=M
@R14
A=M
M=D
// 'label MAIN_LOOP_START' (Line 10)
(null$MAIN_LOOP_START)
// 'push argument 0' (Line 11)
@ARG
D=M
@R13
M=D
@0
D=A
(PUSH_ARG.5.LOOP)
D=D-1
@PUSH_ARG.5.END
D;JLT
@R13
M=M+1
@PUSH_ARG.5.LOOP
D;JGE
(PUSH_ARG.5.END)
@R13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'if-goto COMPUTE_ELEMENT' (Line 12)
@SP
AM=M-1
D=M
@null$COMPUTE_ELEMENT
D;JNE
// 'goto END_PROGRAM' (Line 13)
@null$END_PROGRAM
0;JMP
// 'label COMPUTE_ELEMENT' (Line 14)
(null$COMPUTE_ELEMENT)
// 'push that 0' (Line 15)
@THAT
D=M
@R13
M=D
@0
D=A
(PUSH_THAT.6.LOOP)
D=D-1
@PUSH_THAT.6.END
D;JLT
@R13
M=M+1
@PUSH_THAT.6.LOOP
D;JGE
(PUSH_THAT.6.END)
@R13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'push that 1' (Line 16)
@THAT
D=M
@R13
M=D
@1
D=A
(PUSH_THAT.7.LOOP)
D=D-1
@PUSH_THAT.7.END
D;JLT
@R13
M=M+1
@PUSH_THAT.7.LOOP
D;JGE
(PUSH_THAT.7.END)
@R13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'add' (Line 17)
@SP
AM=M-1
D=M
@SP
AM=M-1
M=D+M
@SP
M=M+1
// 'pop that 2' (Line 18)
@SP
AM=M-1
D=M
@R13
M=D
@THAT
D=M
@R14
M=D
@2
D=A
@THAT
(POP_THAT.8.LOOP)
D=D-1
@POP_THAT.8.END
D;JLT
@R14
M=M+1
@POP_THAT.8.LOOP
D;JGE
(POP_THAT.8.END)
@R13
D=M
@R14
A=M
M=D
// 'push pointer 1' (Line 19)
@R4
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'push constant 1' (Line 20)
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// 'add' (Line 21)
@SP
AM=M-1
D=M
@SP
AM=M-1
M=D+M
@SP
M=M+1
// 'pop pointer 1' (Line 22)
@SP
AM=M-1
D=M
@R4
M=D
// 'push argument 0' (Line 23)
@ARG
D=M
@R13
M=D
@0
D=A
(PUSH_ARG.9.LOOP)
D=D-1
@PUSH_ARG.9.END
D;JLT
@R13
M=M+1
@PUSH_ARG.9.LOOP
D;JGE
(PUSH_ARG.9.END)
@R13
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// 'push constant 1' (Line 24)
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// 'sub' (Line 25)
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1
// 'pop argument 0' (Line 26)
@SP
AM=M-1
D=M
@R13
M=D
@ARG
D=M
@R14
M=D
@0
D=A
@ARG
(POP_ARG.10.LOOP)
D=D-1
@POP_ARG.10.END
D;JLT
@R14
M=M+1
@POP_ARG.10.LOOP
D;JGE
(POP_ARG.10.END)
@R13
D=M
@R14
A=M
M=D
// 'goto MAIN_LOOP_START' (Line 27)
@null$MAIN_LOOP_START
0;JMP
// 'label END_PROGRAM' (Line 28)
(null$END_PROGRAM)