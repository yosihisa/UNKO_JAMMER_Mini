# UNKO_JAMMER_Mini  
UNKO_JAMMER_Mini is a camera infrared　remote control. It can also handle washlets.  
It is compatible with Nikon, Canon, Sony and LIXIL.  
This repository is the source code of infrared remote control of the camera. (With washlette jack function)  
Video is [here](https://twitter.com/n_yosihisa/status/977338885901508608).  

# ウンコジャマー ミニとは
ウンコジャマーはカメラ用赤外線リモコンです。ウォシュレットを操作することもできます。  
Niko・Canon,Sonyの撮影コマンドとLIXILのおしりコマンドに対応しています。  
PENTAXは今後のアップデートで対応予定です。  
動画は[こちら](https://twitter.com/n_yosihisa/status/977338885901508608)です。

## 各部名称  
![各部名称](https://github.com/yosihisa/UNKO_JAMMER_Mini/blob/master/figure.png)

## 使い方
### 準備 
コイン型リチウム電池(CR2032)を電池ボックスにセットします。  
電池の上にある黒いスイッチの白のつまみを利用するカメラのメーカーに合わせます。  

メーカー対応表  

|メーカー  |スイッチ1(上)  |スイッチ2(下)  |
|---|---|---|
|Nikon  |OFF(左)  |OFF(左)  |
|Canon  |ON (右)  |OFF(左)  |
|Sony   |OFF (左) |ON (右)  |
|PENTAX |ON (右)  |ON (右)  |
  
  
### 撮影する
カメラをリモコン操作モードにします。(各機種の取扱説明書をご覧ください。)  
左側のスライドスイッチをONにします。  
LEDの下にある白いボタンを押すとシャッターを切ることができます。  
撮影が終了したら左側のスライドスイッチをoFFにしましょう。  

### おしりコマンドを発動する
おしりコマンドを発動するためには白いボタンを押しながら電源を入れる必要があります。  
白いボタンを押したまま電源を入れると、電源を切るまで白いボタンを押すたびにおしりコマンドが送信されます。


## 開発環境
- Atmel Studio 7
- KiCad 5.0.0
## 作者
よしひさ([@n_yosihisa](https://twitter.com/n_yosihisa))  
てぽ丼([@teppodone](https://twitter.com/teppodone))  
