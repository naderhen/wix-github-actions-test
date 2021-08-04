!include 'StdUtils.nsh'

!macro customInstall
  !insertMacro writeDepartmentFile

  AccessControl::GrantOnFile "C:\ProgramData\TestWix\AppName" "(S-1-5-32-545)" "FullAccess"
!macroend

!macro writeDepartmentFile
    ${StdUtils.GetParameter} $R0 "dept" "auth"
    FileOpen $4 '$INSTDIR\resources\dept.txt' w
    FileWrite $4 '$R0'
    FileClose $4
!macroend

!macro preInit
  SetRegView 64
  WriteRegExpandStr HKLM "${INSTALL_REGISTRY_KEY}" InstallLocation "C:\ProgramData\TestWix\AppName"
  WriteRegExpandStr HKCU "${INSTALL_REGISTRY_KEY}" InstallLocation "C:\ProgramData\TestWix\AppName"
  WriteRegExpandStr HKLM "Software\Microsoft\Windows\CurrentVersion\TestWix" "TestWixRegistryKey" "${INSTALL_REGISTRY_KEY}"
  WriteRegExpandStr HKLM "Software\Microsoft\Windows\CurrentVersion\TestWix" "TestWixInstallDirectory" "C:\ProgramData\TestWix\AppName"
  SetRegView 32
  WriteRegExpandStr HKLM "${INSTALL_REGISTRY_KEY}" InstallLocation "C:\ProgramData\TestWix\AppName"
  WriteRegExpandStr HKCU "${INSTALL_REGISTRY_KEY}" InstallLocation "C:\ProgramData\TestWix\AppName"
!macroend