// naskfunc.nas で作った関数を使うことをCコンパイラに教える
void io_hlt(void);

void HariMain(void) {
fin:
  io_hlt(); // naskfunc.nas の _io_hlt が実行される
  goto fin;
}
