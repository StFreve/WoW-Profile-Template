@echo off
pushd %cd%
cd %~dp0/..
@echo off
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c.%%a.%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a:%%b)
echo %mydate%_%mytime%

git add * 
git commit -m "Configuration of %mydate% %mytime%"
popd