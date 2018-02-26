@echo on
color 2f
mode con: cols=80 lines=25
@REM
@echo 正在清理文件，请稍候......
@rem 循环删除当前目录及子目录下所有的.cache文件
@for /r . %%a in (.) do @if exist "%%a\.cache" rd /s /q "%%a\.cache"
@rem 循环删除当前目录及子目录下所有的.release文件
@for /r . %%a in (.) do @if exist "%%a\.release" rd /s /q "%%a\.release"
@echo 清理完毕！！！
@pause