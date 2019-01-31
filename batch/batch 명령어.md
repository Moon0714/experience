## network adapter change

@echo off
명령어가 안 보이도록 해줌.

netsh interface show interface
현재 사용하고 있는 네트워크 보여 줌.

echo.
개행

echo choice the menu you want
echo enable.......1
echo disable......2
그냥 echo만 쓰면 그 다음 문장들을 출력 해 줌.

set /p num=input a menu:
set /p str=input adapter name:
변수들 입력 받는 거

if /i %num%==1 (
얘는 값 비교 if문

​	netsh interface set interface %str% enable
​	netsh interface set interface %str% disable
​	얘는 str변수로 네트워크 켜주거나 꺼주는 애
pause
exit

멈추고 끝내는 애