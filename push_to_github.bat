@echo off
chcp 65001 > nul
echo ========================================================
echo   Synthera GitHub Repository Push (mykamja04-pixel/syntera)
echo ========================================================
echo.
cd /d "%~dp0"
echo [1/2] Git Status 확인
git status
echo.
echo [2/2] GitHub로 푸시 진행 (origin main)...
echo * 브라우저 인증 창이 열리면 GitHub 로그인을 승인해 주세요.
echo.
git push -u origin main
echo.
if %errorlevel% equ 0 (
    echo ========================================================
    echo   [성공] GitHub에 소스코드가 성공적으로 업로드되었습니다!
    echo   https://github.com/mykamja04-pixel/syntera
    echo ========================================================
) else (
    echo [안내] 푸시 중 문제가 발생했습니다. 브라우저 인증을 완료하셨는지 확인해 주세요.
)
echo.
pause

