@echo off
pushd %cd%
cd %~dp0/..
SET "DEFAULT_WOWPATH=%ProgramFiles(x86)%\World of Warcraft"
:SetWoWPath:
IF EXIST "%DEFAULT_WOWPATH%" (
  SET "WOWPATH=%DEFAULT_WOWPATH%"
  SET /P "WOWPATH=Enter World Of Warcraft Path (%DEFAULT_WOWPATH%): "
) ELSE (
  SET /p "WOWPATH=Enter World Of Warcraft Path: "
)
IF NOT EXIST "%WOWPATH%\_retail_" GOTO :SetWoWPath:
echo World Of Warcraft path is set to %WOWPATH%
mklink /D /J WTF "%WOWPATH%\_retail_\WTF"
mklink /D /J Interface "%WOWPATH%\_retail_\Interface"
mklink /D /J Fonts "%WOWPATH%\_retail_\Fonts"
git init .
git add *
popd