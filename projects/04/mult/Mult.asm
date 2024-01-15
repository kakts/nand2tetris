// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// Assumes that R0 >= 0, R1 >= 0, and R0 * R1 < 32768.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

//// Replace this comment with your code.

    @R2
    M=0 // 計算結果
(LOOP)
    @R1
    D=M // D = R1 カウンタ
    @END
    D;JLE // R1が0以下になったらEND
    @R0
    D=M // D = R0
    @R2
    M=D+M // D + R0 // 
    @R1
    M=M-1 // i=i-1
    @LOOP
    0;JMP // LOOPへ移動
(END)
    @END
    0;JMP // 無限ループ

