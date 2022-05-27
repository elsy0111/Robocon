@REM　初期化など &
echo　著作 : 片野凱介 &
echo off
chcp 65001

@REM グローバル変数 &
set LangTypeC=
set LangTypeCpp=
set InputFilePath=
set RunningPath=
set GccPath=

@REM Pathの定義 &
set /p InputFilePath="ソースコードの絶対ファイルパスを入力 : "
set RunningPath=%~dp0
set GccPath=C:\Xilinx\14.7\ISE_DS\ISE\gnu\MinGW\Beta\nt64\bin

@REM 前処理 &
echo 上書き出力なので、実行ファイルを事前に移動させておいてください。
set LangTypeC=%InputFilePath:~-2%
set LangTypeCpp=%InputFilePath:~-4%

@REM メイン処理 &
if %LangTypeC% == .c (
    echo 選択された言語：c

    cd /d %GccPath%
    echo コンパイラの出力結果 : 
    echo - * - * - * - * - * - * - * - * - * - * -
    gcc -Wall %InputFilePath% -o %RunningPath%OutC
    echo - * - * - * - * - * - * - * - * - * - * -

    echo;
    echo 実行ファイルの実行 : 
    echo - * - * - * - * - * - * - * - * - * - * -
    %RunningPath%OutC
    echo - * - * - * - * - * - * - * - * - * - * -
    echo;

    echo %RunningPath%OutC.exe に上書き出力されています。
    pause

) else if %LangTypeCpp% == .cpp (
    echo 選択された言語：cpp

    cd /d %GccPath%
    echo コンパイラの出力結果 : 
    echo - * - * - * - * - * - * - * - * - * - * -
    g++ -Wall -o %RunningPath%OutCpp %InputFilePath%
    echo - * - * - * - * - * - * - * - * - * - * -

    echo;
    echo 実行ファイルの実行 : 
    echo - * - * - * - * - * - * - * - * - * - * -
    %RunningPath%OutCpp
    echo - * - * - * - * - * - * - * - * - * - * -
    echo;

    echo %RunningPath%OutCpp.exe に上書き出力されています。
    pause

) else (
    echo cまたはcpp以外が入力されました。プログラムを終了します。
    pause
)
