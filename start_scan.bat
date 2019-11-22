@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
@echo "启动 采集"
cd %~dp0
start javaw -Xbootclasspath/a:./;./conf -Dfile.encoding=UTF-8 -jar helper-1.0.jar scan