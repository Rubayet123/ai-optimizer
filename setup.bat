@echo off
setlocal enabledelayedexpansion
title AI Optimizer Suite - Master Setup

:: Admin Check
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [!] Please run as Administrator.
    pause & exit /b
)

:menu
cls
echo ==========================================
echo       AI CODE OPTIMIZATION SUITE
echo ==========================================
echo  1. Install RTK (Token Killer)
echo  2. Install ECC (Coming Soon)
echo  3. Install ALL Tools
echo  4. Exit
echo ==========================================
set /p choice="Select an option (1-4): "

if "%choice%"=="1" goto install_rtk
if "%choice%"=="2" echo [!] ECC is not yet implemented. & pause & goto menu
if "%choice%"=="3" goto install_all
if "%choice%"=="4" exit /b

:install_rtk
call "%~dp0rtk\install-rtk.bat"
pause & goto menu

:install_all
call "%~dp0rtk\install-rtk.bat"
echo [*] All tools processed.
pause & goto menu
