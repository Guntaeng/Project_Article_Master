@echo off
cd /d C:\Automate_WEB\Create_Article_automate\testcases
robot --outputdir results C:\Automate_WEB\Create_Article_automate\testcases\Create_Article.robot

REM หน่วงเวลา 1 วินาที
timeout /t 1 /nobreak

REM เปิดไฟล์ report.html หลังการหน่วงเวลา
start C:\Automate_WEB\Create_Article_automate\testcases\results\report.html

pause
