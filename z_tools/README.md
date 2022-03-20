# z_tools_osx

from: https://github.com/HariboteOS/tolenv/

macOS 用の z_tools バイナリです．
`z_tools` にフォルダ名を変更してご利用ください．

Makefile 書き換えの参考: https://github.com/sandai/30nichideosjisaku

## 依存しているパッケージ・ソフトウエア

エミュレータに使う qemu もしくは bochs は別途インストールする必要があります。通常は qemu のみで十分です。

- qemu
  - `brew install qemu` で入れることができます。
  - brew コマンドは macOS 向けのパッケージマネージャのようなものです。インストールは以下のURLから
    - https://brew.sh/

- bochs
  - 導入手順は[こちら](https://github.com/HariboteOS/z_tools_osx/wiki/bochs_compile)
  - Homebrew で導入できる bochs は正しく動作しないため、ソースコードからコンパイルしてインストールする必要があります


## 実行例

先に１つ上のフォルダの README に書かれている方法に従って `make up` をおこなっておくこと。

```sh
qemu-system-i386 helloos.img
```

```sh
./nask helloos.nas helloos_nas.img
```
