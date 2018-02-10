for /F "delims=" %%i in ('cygpath.exe -u -p "%PATH%"') do set "POSIX_PATH=%%i"
if errorlevel 1 exit 1
for /F "delims=" %%i in ('cygpath.exe -u -p "%PREFIX%"') do set "POSIX_PREFIX=%%i"
if errorlevel 1 exit 1

bash -ex "%RECIPE_DIR%\build.sh"
if errorlevel 1 exit 1
