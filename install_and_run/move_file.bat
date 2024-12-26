@echo off
echo Moving project folders...

:: ตั้งค่าตำแหน่งที่ต้นทางและปลายทาง
set SOURCE_DIR=%USERPROFILE%\Downloads\Create_Article_automate
set DEST_DIR=C:\Automate_WEB

:: คัดลอกโฟลเดอร์ทั้งหมดไปยังตำแหน่งปลายทาง
xcopy "%SOURCE_DIR%" "%DEST_DIR%" /E /I

echo Project folders have been moved to %DEST_DIR%.
pause
