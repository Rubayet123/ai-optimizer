@echo off
echo [*] Deploying Multi-Stack Optimization Rules...

set "ECC_TEMP=%TEMP%\ecc_source"
set "AG_RULES_DIR=%USERPROFILE%\.gemini\antigravity\rules"

:: Clone/Update Source
if exist "%ECC_TEMP%" (
    cd /d "%ECC_TEMP%"
    git pull
) else (
    git clone https://github.com/affaan-m/everything-claude-code.git "%ECC_TEMP%"
)

:: Install all your languages
:: Note: This uses 'node' which comes with VS Code/Node.js installs
echo [*] Configuring Kotlin, Flutter, React, TypeScript, and Python...
node "%ECC_TEMP%\scripts\install.js" --target antigravity common kotlin flutter react typescript python

:: Ensure global availability
if not exist "%AG_RULES_DIR%" mkdir "%AG_RULES_DIR%"
copy /y "%ECC_TEMP%\rules\*.md" "%AG_RULES_DIR%\"

echo [SUCCESS] Your AI is now an expert in your specific tech stack.
