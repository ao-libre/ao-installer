;Argentum Online Libre 2018 installer

#define MyAppName "Argentum Online Libre - Cliente (Juego)"
#define MyAppVersion "2018"
#define MyAppPublisher "Argentum Online Libre "
#define MyAppURL "http://www.argentumonline.org/"
#define MyAppExeName "Autoupdate.exe"

[Code]
function FrameworkIsInstalled: Boolean;
begin
  Result := RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\.NETFramework\policy\v2.0');
end;

[Setup]
AppId={{71A2249F-39CC-42B2-98B9-5C0B6D2EDB1F}
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
SetupIconFile=C:\ao-installer\favicon.ico

[Languages]
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\ao-autoupdate\Autoupdate.exe"; DestDir: "{app}"; Flags: ignoreversion

Source: "C:\ao-installer\Dlls\system32\AAMD532.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\system32\AOFX.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\system32\AOLIB.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
;Unsafe files http://www.jrsoftware.org/ishelp/index.php?topic=unsafefiles
Source: "C:\ao-installer\Dlls\system32\GDI32.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\system32\IJL11.dll"; DestDir: "{app}\Dlls"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\system32\LEEINIS.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\system32\LEEMAPAS.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
;Unsafe files http://www.jrsoftware.org/ishelp/index.php?topic=unsafefiles
;Source: "C:\ao-installer\Dlls\system32\OLEPRO32.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\system32\Unzip32.dll"; DestDir: "{app}"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\system32\VBABDX.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\system32\WINMM.dll"; DestDir: "{sys}"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\system32\WS2_32.dll"; DestDir: "{sys}"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\system32\ZLIB.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit

Source: "C:\ao-installer\Dlls\SysWOW64\COMCTL32.ocx"; DestDir: "{app}\Dlls"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\SysWOW64\COMDLG32.ocx"; DestDir: "{app}\Dlls"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\SysWOW64\CSWSK32.ocx"; DestDir: "{app}\Dlls"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\SysWOW64\DX7VB.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\SysWOW64\DX8VB.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\SysWOW64\MSADODC.ocx"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\SysWOW64\MSCOMCTL.ocx"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\SysWOW64\MSINET.ocx"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\SysWOW64\MSSTDFMT.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\SysWOW64\MSVBVM50.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\SysWOW64\MSVBVM60.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\SysWOW64\MSWINSCK.ocx"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\SysWOW64\OLEAUT32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\SysWOW64\RICHTX32.ocx"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\SysWOW64\SHDOCVW.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\SysWOW64\VBALPROGBAR6.ocx"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\SysWOW64\QUARTZ.dll"; DestDir: "{app}"; Flags: ignoreversion

Source: "C:\ao-installer\Dlls\vbDABL.dll"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase AAMD532.dll; WorkingDir: {app}\dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase IJL11.dll; WorkingDir: {app}\dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase vbdabl.dll; WorkingDir: {app}\dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase psapi.dll; WorkingDir: {app}\dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase Unzip32.dll; WorkingDir: {app}; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{app}\{#MyAppExeName}"; Verb: runas; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent shellexec


