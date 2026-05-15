@echo off
setlocal enabledelayedexpansion
title AI Optimizer Suite - Setup

:: Admin Check
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [!] ERROR: Please run as Administrator.
    pause & exit /b
)

echo ======================================================
echo    AI OPTIMIZER SUITE: RTK + ECC (Antigravity)
echo ======================================================

:: Run Sub-scripts
call "%~dp0rtk\install-rtk.bat"
call "%~dp0ecc\install-ecc.bat"

echo.
echo ======================================================
echo  FULL SUITE READY!
echo ======================================================
echo  1. Restart your terminal for PATH changes.
echo  2. Use 'rtk gain' to monitor Antigravity savings.
echo  3. Use 'node C:\tools\ecc-source\scripts\install.js' 
echo     inside your projects for local ECC rules.
echo ======================================================
pause
