; haribote-os
; TAB=2

  ORG  0xc200   ; このプログラムがどこに読み込まれるか

  MOV  AL,0x13  ; VGAグラフィクス, 320 x 200 x 8bit カラー
  MOV  AH,0x00
  INT  0x10

fin:
  HLT
  JMP  fin
