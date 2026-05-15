@echo off
echo [*] Starting RTK Installation...

set "BIN_DIR=C:\tools\rtk"
set "DL_URL=https://github.com/rtk-ai/rtk/releases/latest/download/rtk-x86_64-pc-windows-msvc.zip"
set "AG_RULES_DIR=%USERPROFILE%\.gemini\antigravity\rules"

if not exist "%BIN_DIR%" mkdir "%BIN_DIR%"
if not exist "%AG_RULES_DIR%" mkdir "%AG_RULES_DIR%"

curl -L -o "%TEMP%\rtk.zip" "%DL_URL%"
tar -xf "%TEMP%\rtk.zip" -C "%BIN_DIR%"
del "%TEMP%\rtk.zip"

:: Add to Path
powershell -Command "$oldPath = [Environment]::GetEnvironmentVariable('Path', 'Machine'); if ($oldPath -notlike '*%BIN_DIR%*') { [Environment]::SetEnvironmentVariable('Path', $oldPath + ';%BIN_DIR%', 'Machine') }"

:: Setup Global Rules for Antigravity
cd /d "%TEMP%"
"%BIN_DIR%\rtk.exe" init --agent antigravity
copy /y ".agents\rules\antigravity-rtk-rules.md" "%AG_RULES_DIR%\rtk-rules.md"

echo [SUCCESS] RTK is now configured.
