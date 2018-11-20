## network adapter change

@echo off

echo choice the menu you want

rem line alignment

echo.
echo enable.......1
echo disable......2
echo.

set /p num=input a menu:
echo.

rem show current adapter you have

netsh interface show interface
set /p str=input adapter name:

if /i %num%==1 (

​	rem enable the adapter you choose

​	netsh interface set interface %str% enable
)

if /i %num%==2 (

​	rem disable the adapter you choose

​	netsh interface set interface %str% disable
)

echo "end! input anything"
pause
exit