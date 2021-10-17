// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// The number of bytes required = (32 * 152) / 163
@8192   
D=A            
@ByteNumber  // Tells that the Byte number = 8192
M=D     

(LOOP)
   @index  // makes index = 0
   M=0     

(INPUT)
   @KeyboardInput
   D=M
   @WhiteScreen 
   D;JEQ   // goto WhiteScreen if eyboardInput value is 0

(BlackScreen)
   @index
   D=M
   @SCREEN  // @16384 
   A=A+D   // Calculating the  byte address
   M=-1    // When any key is pressed: Fill with black
   @END
   0;JMP   // goto END

(WhiteScreen)
   @index
   D=M
   @SCREEN
   A=A+D   // Calculating the byte address
   M=0     // When any key is pressed: Fill with white

(END)
   @index
   MD=M+1  // Increment index by 1
   @ByteNumber
   D=D-M
   @LOOP
   D;JEQ   // goto LOOP if (ByteNumber - index == 0)
   @INPUT
   0;JMP   // goto INPUT