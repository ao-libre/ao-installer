;Argentum Online Libre 2018 installer

#define MyAppName "Argentum Online Libre"
#define MyAppVersion "2018"
#define MyAppPublisher "Argentum Online Libre"
#define MyAppURL "http://www.argentumonline.org/"
#define MyAppExeName "Autoupdate.exe"
#define MyAppId "ArgentumOnlineLibreAppId"
#define BaseInstaller "C:\Users\j_dal\Desktop\ao-installer"
#define BaseClient "C:\Users\j_dal\Desktop\v0.2"

[Code]
function FrameworkIsInstalled: Boolean;
begin
  Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\.NETFramework\policy\v2.0');
end;

[Setup]
AppId={#MyAppId}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
OutputDir=C:\Program Files (x86)
OutputBaseFilename=ArgentumOnlineLibre
Compression=lzma
SolidCompression=yes
PrivilegesRequired=admin
SetupIconFile={#BaseInstaller}\favicon.ico

[Languages]
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; OnlyBelowVersion: 0,6.1

[Files]
Source: "{#BaseClient}\Graficos\*"; DestDir: "{app}\Graficos"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BaseClient}\Updates\*"; DestDir: "{app}\Updates";
Source: "{#BaseClient}\Wav\*"; DestDir: "{app}";
Source: "{#BaseClient}\Autoupdate.exe"; DestDir: "{app}";
Source: "{#BaseClient}\Unzip32.dll"; DestDir: "{app}";
Source: "{#BaseClient}\ConfigAutoupdate.ini"; DestDir: "{app}";

Source: "{#BaseInstaller}\Dlls\system32\AAMD532.dll"; DestDir: "{app}\Dlls"; 
Source: "{#BaseInstaller}\Dlls\system32\AOFX.dll"; DestDir: "{app}\Dlls"; 
Source: "{#BaseInstaller}\Dlls\system32\AOLIB.dll"; DestDir: "{app}\Dlls"; 
;Unsafe files http://www.jrsoftware.org/ishelp/index.php?topic=unsafefiles
Source: "{#BaseInstaller}\Dlls\system32\GDI32.dll"; DestDir: "{app}\Dlls"; 
Source: "{#BaseInstaller}\Dlls\system32\IJL11.dll"; DestDir: "{app}\Dlls"; 
Source: "{#BaseInstaller}\Dlls\system32\LEEINIS.dll"; DestDir: "{app}\Dlls"; 
Source: "{#BaseInstaller}\Dlls\system32\LEEMAPAS.dll"; DestDir: "{app}\Dlls"; 
;Unsafe files http://www.jrsoftware.org/ishelp/index.php?topic=unsafefiles
Source: "{#BaseInstaller}\Dlls\system32\OLEPRO32.dll"; DestDir: "{app}\Dlls"; Flags: allowunsafefiles
Source: "{#BaseInstaller}\Dlls\system32\VBABDX.dll"; DestDir: "{app}\Dlls";
Source: "{#BaseInstaller}\Dlls\system32\WINMM.dll"; DestDir: "{sys}";
Source: "{#BaseInstaller}\Dlls\system32\WS2_32.dll"; DestDir: "{sys}";
Source: "{#BaseInstaller}\Dlls\system32\ZLIB.dll"; DestDir: "{app}\Dlls";

Source: "{#BaseInstaller}\Dlls\SysWOW64\COMCTL32.ocx"; DestDir: "{app}\Dlls"; Flags: ignoreversion regserver 64bit
Source: "{#BaseInstaller}\Dlls\SysWOW64\COMDLG32.ocx"; DestDir: "{app}\Dlls"; Flags: ignoreversion regserver 64bit
Source: "{#BaseInstaller}\Dlls\SysWOW64\CSWSK32.ocx"; DestDir: "{app}\Dlls"; Flags: ignoreversion regserver 64bit
Source: "{#BaseInstaller}\Dlls\SysWOW64\DX7VB.dll"; DestDir: "{app}\Dlls"; Flags: ignoreversion regserver 64bit
Source: "{#BaseInstaller}\Dlls\SysWOW64\DX8VB.dll"; DestDir: "{app}\Dlls"; Flags: ignoreversion regserver 64bit
Source: "{#BaseInstaller}\Dlls\SysWOW64\MSADODC.ocx"; DestDir: "{app}\Dlls"; Flags: ignoreversion regserver 64bit
Source: "{#BaseInstaller}\Dlls\SysWOW64\MSCOMCTL.ocx"; DestDir: "{app}\Dlls"; Flags: ignoreversion regserver 64bit
Source: "{#BaseInstaller}\Dlls\SysWOW64\MSINET.ocx"; DestDir: "{app}\Dlls"; Flags: ignoreversion regserver 64bit
Source: "{#BaseInstaller}\Dlls\SysWOW64\MSSTDFMT.dll"; DestDir: "{app}\Dlls"; Flags: ignoreversion regserver 64bit
Source: "{#BaseInstaller}\Dlls\SysWOW64\MSVBVM50.dll"; DestDir: "{app}\Dlls"; Flags: ignoreversion regserver 64bit  allowunsafefiles
Source: "{#BaseInstaller}\Dlls\SysWOW64\MSVBVM60.dll"; DestDir: "{app}\Dlls"; Flags: ignoreversion regserver 64bit  allowunsafefiles
Source: "{#BaseInstaller}\Dlls\SysWOW64\MSWINSCK.ocx"; DestDir: "{app}\Dlls"; Flags: ignoreversion regserver 64bit
Source: "{#BaseInstaller}\Dlls\SysWOW64\OLEAUT32.dll"; DestDir: "{app}\Dlls"; Flags: ignoreversion regserver 64bit allowunsafefiles
Source: "{#BaseInstaller}\Dlls\SysWOW64\RICHTX32.ocx"; DestDir: "{app}\Dlls"; Flags: ignoreversion regserver 64bit
Source: "{#BaseInstaller}\Dlls\SysWOW64\SHDOCVW.dll"; DestDir: "{app}\Dlls"; Flags: ignoreversion
Source: "{#BaseInstaller}\Dlls\SysWOW64\VBALPROGBAR6.ocx"; DestDir: "{app}\Dlls"; Flags: ignoreversion regserver 64bit
Source: "{#BaseInstaller}\Dlls\SysWOW64\QUARTZ.dll"; DestDir: "{app}\Dlls"; Flags: ignoreversion

Source: "{#BaseInstaller}\Dlls\vbDABL.dll"; DestDir: "{app}\Dlls"; Flags: ignoreversion

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase Unzip32.dll; WorkingDir: {app}; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase COMCTL32.ocx; WorkingDir: {app}\Dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase COMDLG32.ocx; WorkingDir: {app}\Dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase CSWSK32.ocx; WorkingDir: {app}\Dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase DX7VB.dll; WorkingDir: {app}\Dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase DX8VB.dll; WorkingDir: {app}\Dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase MSADODC.ocx; WorkingDir: {app}\Dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase MSCOMCTL.ocx; WorkingDir: {app}\Dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase MSINET.ocx; WorkingDir: {app}\Dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase MSSTDFMT.dll; WorkingDir: {app}\Dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase MSVBVM50.dll; WorkingDir: {app}\Dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase MSVBVM60.dll; WorkingDir: {app}\Dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase MSWINSCK.ocx; WorkingDir: {app}\Dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase OLEAUT32.dll; WorkingDir: {app}\Dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase RICHTX32.ocx; WorkingDir: {app}\Dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase SHDOCVW.dll; WorkingDir: {app}\Dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase VBALPROGBAR6.ocx; WorkingDir: {app}\Dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase QUARTZ.dll; WorkingDir: {app}\Dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled



Filename: "{app}\{#MyAppExeName}"; Verb: runas; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent shellexec


