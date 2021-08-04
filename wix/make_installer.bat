del installer.exe
del installer.msi
del installer.wixobj
del installer.wixpdb

candle installer.wxs -ext WixUtilExtension -dProductVersion=1.0.7
light installer.wixobj -ext WixUtilExtension -dProductVersion=1.0.7