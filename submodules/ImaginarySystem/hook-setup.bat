@echo off

FOR %%i IN (.hooks\*) DO (
  MKLINK /h ".git\hooks\%%~nxi" "%%i"
)
