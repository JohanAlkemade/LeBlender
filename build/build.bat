@ECHO OFF

ECHO Removing old nupkg
del /S *.nupkg

ECHO Packing the NuGet release files
..\.tools\NuGet.exe Pack Lecoati.LeBlender.nuspec -Prop Configuration=Release


ECHO Publish NuGet
..\.tools\NuGet.exe Push Lecoati.LeBlender*.nupkg -Source "https://s5.pkgs.visualstudio.com/_packaging/CommonPackages/nuget/v3/index.json" -ApiKey VSTS

PAUSE
