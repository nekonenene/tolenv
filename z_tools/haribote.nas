; haribote-os
; TAB=2

; BOOT_INFO 関係
CYLS  EQU 0x0ff0 ; ブートセクタが設定する
LEDS  EQU 0x0ff1
VMODE EQU 0x0ff2 ; 色数に関する情報。何ビットカラーか
SCRNX EQU 0x0ff4 ; 解像度の x (screen x)
SCRNY EQU 0x0ff6 ; 解像度の y (screen y)
VRAM  EQU 0x0ff8 ; グラフィックバッファの開始番地

  ORG  0xc200    ; このプログラムがどこに読み込まれるか

  MOV  AL,0x13   ; VGAグラフィクス, 320 x 200 x 8bit カラー
  MOV  AH,0x00
  INT  0x10
  MOV  BYTE [VMODE],8 ; 画面モードをメモする
  MOV  WORD [SCRNX],320
  MOV  WORD [SCRNY],200
  MOV  DWORD [VRAM],0x000a0000

; キーボードのLED状態をBIOSに教えてもらう
  MOV  AH,0x02
  INT  0x16      ; keyboard BIOS
  MOV  [LEDS],AL

fin:
  HLT
  JMP  fin
