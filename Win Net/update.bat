echo.
set /p update="Stable / Beta (s/b) : "

if %update%==s (goto stable)
if %update%==b (goto beta)

:stable
git pull origin master
git checkout master
goto end

:beta
git pull origin beta
git checkout beta

:end
echo.

pause

winnet.bat