// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen
// by writing 'black' in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen by writing
// 'white' in every pixel;
// the screen should remain fully clear as long as no key is pressed.

//// Replace this comment with your code.
(INIT)

    @8192 // 32 * 256
    D=A 
    @R2
    M=D

(LOOP)
    @R2
    M=M-1 // indexを逆順に進行
    D=M
    
    @INIT
    D;JLT
    // キーボード入力を監視
    @KBD
    D=M

    @WHITEIMP
    D;JEQ

    // Dの値をチェック 0でなければキーが押されている
    @BLACKIMP       
    0;JMP

(WHITEIMP)
    @SCREEN
    D=A
    @R2
    A=D+M
    M=0 // ワードを0にすることで16bit分0になる
    @LOOP
    0;JMP

// 成功版
(BLACKIMP)
    @SCREEN
    D=A
    @R2
    A=D+M
    M=-1 // 現在のアドレスから1引くことで、1つ前のワード(16bit)全体をまとめて1にすることができる
    @LOOP
    0;JMP

