// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

@R2
M=0     // 初始化结果为0
@i
M=0     // 初始化计数器为0

(LOOP)
@i
D=M
@R1
D=D-M
@END
D;JGE   // 如果 i >= R1，跳到结束

@R0
D=M
@R2
M=M+D   // R2 = R2 + R0

@i
M=M+1   // i++

@LOOP
0;JMP

(END)
@END
0;JMP   // 无限循环结束

