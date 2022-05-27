@REM　初期化など &
echo　著作 : 片野凱介 &
echo off
chcp 65001

@REM グローバル変数 &
set InputFilePath=
set GccPath=

@REM Pathの定義 &
set /p InputFilePath="実行ファイルの絶対ファイルパスを入力 : "
set GccPath=C:\Xilinx\14.7\ISE_DS\ISE\gnu\MinGW\Beta\nt64\bin

@REM 前処理 &
echo CompilerGen3.batでコンパイルした実行ファイルのみ出力されます。

@REM メイン処理 &
    cd /d %GccPath%

    echo;
    echo 実行ファイルの実行 : 
    echo - * - * - * - * - * -
    %InputFilePath%
    echo - * - * - * - * - * -
    echo;
    pause