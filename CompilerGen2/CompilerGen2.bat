@REM　初期化など &
@REM echo　著作 : 片野凱介 &
echo off
chcp 65001

@REM グローバル変数 &
set LangType=
set FilePath=
set RunningPath=%~dp0

@REM パスの移動 &
cd /d %RunningPath%
cd ./mingw64/bin

@REM パス入力、抽出 &
set /p FilePath="ソースコードのファイルパスを入力"

@REM 言語入力 &
set /p LangType="ソースコードの言語(c/cpp)を入力"
if %LangType% == c (
    echo 選択された言語:c
    gcc -Wall %FilePath% -o %RunningPath%OutC

    pause
) else if %LangType% == cpp (
    echo 選択された言語:cpp
    g++ -Wall %FilePath% -o %RunningPath%OutCpp

    pause
) else (
    echo cまたはcpp以外が入力されました
    echo プログラムを終了します

    pause
)


@REM type nul > FilePath.txt

@REM echo %FilePath:/=\%
@REM echo %FilePath% > FilePath.txt
@REM findstr \<\ FilePath.txt

@REM del /q FilePath.txt