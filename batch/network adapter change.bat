@echo off

netsh interface show interface
echo.

echo choice the menu you want
echo.
echo enable.......1
echo disable......2
echo.

set /p num=input a menu:
echo.

set /p str=input adapter name:

if /i %num%==1 (
	netsh interface set interface %str% enable
)

if /i %num%==2 (
	netsh interface set interface %str% disable
)

echo end! input anything
pause
exit