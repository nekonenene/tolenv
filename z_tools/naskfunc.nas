; naskfunc
; TAB=2

[FORMAT "WCOFF"]  ; オブジェクトファイルを作るモード
[BITS 32]         ; 32bitモード用の機械語を作らせる

; オブジェクトファイルのための情報
[FILE "naskfunc.nas"] ; ソースファイル名情報

  GLOBAL _io_hlt      ; このプログラムに含まれる関数名

; 以下は実際の関数
[SECTION .text] ; オブジェクトファイルでは、これを書いてからプログラムを書く

_io_hlt:        ; void io_hlt(void);
  HLT
  RET
