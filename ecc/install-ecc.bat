@echo off
set "ECC_SOURCE=C:\tools\ecc-source"

echo [*] Syncing Everything Claude Code (ECC) Source...
if exist "%ECC_SOURCE%" (
    cd /d "%ECC_SOURCE%"
    git pull
) else (
    git clone --depth 1 https://github.com/affaan-m/everything-claude-code.git "%ECC_SOURCE%"
)

echo [SUCCESS] ECC Source is ready at %ECC_SOURCE%
echo.
echo To apply to a project, run:
echo node %ECC_SOURCE%/scripts/install.js --target antigravity common [languages]
