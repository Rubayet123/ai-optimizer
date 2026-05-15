@echo off
setlocal enabledelayedexpansion
title AI Optimizer Suite - Master Setup

:: Admin Check
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [!] ERROR: Please run as Administrator.
    pause & exit /b
)

:menu
cls
echo ==========================================
echo       AI CODE OPTIMIZATION SUITE
echo ==========================================
echo  1. Install RTK (Token & Cost Saver)
echo  2. Install ECC (Kotlin, Flutter, React, TS, Python)
echo  3. Install EVERYTHING (Full Suite)
echo  4. Exit
echo ==========================================
set /p choice="Select an option (1-4): "

if "%choice%"=="1" goto install_rtk
if "%choice%"=="2" goto install_ecc
if "%choice%"=="3" goto install_all
if "%choice%"=="4" exit /b

:install_rtk
call "%~dp0rtk\install-rtk.bat"
echo [*] RTK Setup Complete.
pause & goto menu

:install_ecc
call "%~dp0ecc\install-ecc.bat"
echo [*] ECC Setup Complete.
pause & goto menu

:install_all
call "%~dp0rtk\install-rtk.bat"
call "%~dp0ecc\install-ecc.bat"
echo [SUCCESS] Full Stack Optimization Ready.
pause & goto menu
