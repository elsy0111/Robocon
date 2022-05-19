@REM　初期化など
echo off
chcp 65001
echo　著作 : 片野凱介

@REM　前提の説明 &
echo　前提)　Z:\MyPrograms\C の中に　NewPprogram.c　があるとします。 &
echo　前提)　NewPprogram.c をコンパイルする例を挙げながら説明します。 &
echo　.

@REM　ソースファイル名の入力 &
echo　例1)　NewPprogram
set /P SourceFileName="例1を参考に、ソースファイルの名前を入力(拡張子不要):"
echo　.

@REM　ソースファイルパスの入力 &
echo　例2)　Z:\MyPrograms\C
set /P SourceFilePath="例2を参考に、ソースファイルの絶対ディレクトリ(ファイル)パスを入力:"
echo　.

@REM　入力の結合(InputPathの生成) &
set InputPath=%SourceFilePath%^\%SourceFileName%.c

@REM　コンパイルの処理 &
cd /d C:\Xilinx\14.7\ISE_DS\ISE\gnu\MinGW\Beta\nt64\bin\
gcc.exe -g -o%SourceFileName% %InputPath%
move %SourceFileName%.exe %SourceFilePath%

pause
