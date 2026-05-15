@echo off
setlocal enabledelayedexpansion
title AI Optimizer Suite - FULL INSTALLER

:: Admin Check
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [!] ERROR: Please run as Administrator.
    pause & exit /b
)

echo ======================================================
echo    INSTALLING FULL AI OPTIMIZER SUITE
echo    (RTK + ECC: Kotlin, Flutter, React, TS, Python)
echo ======================================================

:: 1. SETUP RTK (Token Savings)
set "BIN_DIR=C:\tools\rtk"
set "RTK_URL=https://github.com/rtk-ai/rtk/releases/latest/download/rtk-x86_64-pc-windows-msvc.zip"
set "AG_DIR=%USERPROFILE%\.gemini\antigravity\rules"

echo [*] Setting up RTK in %BIN_DIR%...
if not exist "%BIN_DIR%" mkdir "%BIN_DIR%"
if not exist "%AG_DIR%" mkdir "%AG_DIR%"

curl -L -o "%TEMP%\rtk.zip" "%RTK_URL%"
tar -xf "%TEMP%\rtk.zip" -C "%BIN_DIR%"
del "%TEMP%\rtk.zip"

:: Add to Path
powershell -Command "$oldPath = [Environment]::GetEnvironmentVariable('Path', 'Machine'); if ($oldPath -notlike '*%BIN_DIR%*') { [Environment]::SetEnvironmentVariable('Path', $oldPath + ';%BIN_DIR%', 'Machine') }"

:: Initialize RTK for Antigravity
cd /d "%TEMP%"
"%BIN_DIR%\rtk.exe" init --agent antigravity
copy /y ".agents\rules\antigravity-rtk-rules.md" "%AG_DIR%\rtk-rules.md" >nul

:: 2. SETUP ECC (Language Intelligence)
echo [*] Deploying ECC for Kotlin, Flutter, React, TS, and Python...
set "ECC_TEMP=%TEMP%\ecc_source"

if exist "%ECC_TEMP%" (
    cd /d "%ECC_TEMP%"
    git pull
) else (
    git clone --depth 1 https://github.com/affaan-m/everything-claude-code.git "%ECC_TEMP%"
)

:: Run ECC Installer (Requires Node.js installed)
node "%ECC_TEMP%\scripts\install.js" --target antigravity common kotlin flutter react typescript python

:: Force sync ECC rules to global Antigravity folder
copy /y "%ECC_TEMP%\rules\*.md" "%AG_DIR%\" >nul

echo ======================================================
echo [SUCCESS] ALL TOOLS INSTALLED!
echo.
echo  - RTK: Installed to %BIN_DIR% (Path updated)
echo  - ECC: Global rules injected for your stack.
echo.
echo  PLEASE RESTART YOUR IDE (VS CODE / ANDROID STUDIO)
echo ======================================================
pause
