del installer.exe
del installer.msi
del installer.wixobj
del installer.wixpdb

@REM copy "..\dist\Mark43 First Responder Setup 1.0.7.exe" installer.exe
candle installer.wxs -ext WixUtilExtension -dProductVersion=1.0.7
light installer.wixobj -ext WixUtilExtension -dProductVersion=1.0.7