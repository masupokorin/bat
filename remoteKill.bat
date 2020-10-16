@echo off

rem リモートログインユーザのパスワード
set pass=xxxxxxxx

rem 日時を取得する
set now_date=%DATE: =0%
set now_date=%now_date:~0,4%/%now_date:~5,2%/%now_date:~8,2%

set now_time=%time: =0%
set now_time=%now_time:~0,2%:%now_time:~3,2%:%now_time:~6,2%

set now_dt=%now_date% %now_time%

rem カレントディレクトリに移動する
cd /d "%~dp0"

rem 実行したい処理をセットする
set syori_1=tscon 2 /dest:console /password:%pass%

rem セットしたコマンドをbatに出力する
echo %syori_1% >syori.bat

rem powershellで管理者権限で出来たbatを実行する
powershell start-process syori.bat -verb runas

rem 処理が終わるまでちょい待つ
@ping localhost -n 5 > nul

rem 使い終わったbatを消す
del syori.bat

rem 実行ログを出しておく
chcp 65001
echo %now_dt% 切断実行！！！ >>remote_kill.log

exit
