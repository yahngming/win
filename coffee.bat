@echo off
for /f "delims=" %%a in ('powercfg -getactivescheme') do (
  echo %%a | find /i "balanced" > nul && powercfg -s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
  echo %%a | find /i "performance" > nul && powercfg -s 381b4222-f694-41f0-9685-ff5bb260df2e
  echo %%a | find /i "平衡" > nul && powercfg -s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
  echo %%a | find /i "高性能" > nul && powercfg -s 381b4222-f694-41f0-9685-ff5bb260df2e
)
powercfg -getactivescheme
