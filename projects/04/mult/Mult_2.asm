// Mult.asmのコピー

    @R2
    M=0 // R2の初期化
(LOOP)
    @R1
    D=M // D = R1 次の処理でカウンターの終了条件をチェックするためにDに格納する
    @END
    D;JLE // Dをチェックし0以下になったら@END
    @R0
    D=M // D = R0
    @R2
    D=D+M // D +R0
    @R1
    M=M-1 // i = i - 1
    @LOOP
    0;JMP // LOOPへ移動

(END)
    @END
    0;JMP