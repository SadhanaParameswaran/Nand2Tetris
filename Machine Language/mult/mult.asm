// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

@R2 //Go to final answer box
M=0 
@Product
M=0
@R0 
D=M
@NegativeNumbers  // converting both negative numbers to positive
0;JMP

(JUMP)
   @Product
   D=M
   @R1
   D=D-M
   @END
   D;JGE

(LOOP) // Adding of the numbers until it becomes 0 (sums R0 to result R1 times)
   @R0
   D=M
   @R2
   M=D+M
   @Product
   M=M+1
   @Product
   D=M
   @R1
   D=D-M
   @LOOP
   D;JLT

(END)
   @END
   0;JMP

(NegativeNumbers)  // if D<0, it comes here (For Negative numbers) 
    @R1
    D=M
    @JUMP
    D;JGE // if R1 >= 0, jump to JUMP
    @R0
    M=!M
    M=M+1
    @R1
    M=!M
    M=M+1
    @JUMP
    0;JMP