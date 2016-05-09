REM Resetting Maker Den

SET "SetupResources=c:\MakerDen\Resources\"
SET "Solution=c:\MakerDen\Source\"

cd %Solution%

REM Cleaning up

git reset --hard


copy %SetupResources%VisualStudio\launcher.csproj.user.RPiName %Solution%Launcher\launcher.csproj.user /y

start "Start Visual Studio 2015" /d "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\" /b  "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe"  /resetsettings %SetupResources%\VisualStudio\MakerDenSettings.vssettings %Solution%MakerDenWindows.sln


