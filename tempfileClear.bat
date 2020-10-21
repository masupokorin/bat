@echo off

rem 任意のフォルダ
set DEL_DIR=XXXXXX

rem 任意のフォルダ配下のフォルダとファイルを全て消す(パス指定注意)
forfiles /p %DEL_DIR% /c "cmd /c rmdir /s /q @path"
forfiles /p %DEL_DIR% /c "cmd /c del @file"

exit 0
