@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
@echo "启动查看页面"
cd %~dp0
java -Xbootclasspath/a:./;./conf -Dfile.encoding=UTF-8 -jar helper-1.0.jar  
