@echo off

rem �C�ӂ̃t�H���_
set DEL_DIR=XXXXXX

rem �C�ӂ̃t�H���_�z���̃t�H���_�ƃt�@�C����S�ď���(�p�X�w�蒍��)
forfiles /p %DEL_DIR% /c "cmd /c rmdir /s /q @path"
forfiles /p %DEL_DIR% /c "cmd /c del @file"

exit 0
