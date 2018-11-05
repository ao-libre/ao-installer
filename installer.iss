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
Source: "C:\ao-cliente\Autoupdate.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\ao-cliente\Argentum.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\ao-cliente\Graficos\*"; DestDir: "{app}\Graficos"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\ao-cliente\INIT\*"; DestDir: "{app}\INIT"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\ao-cliente\Mapas\*"; DestDir: "{app}\MAPAS"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\ao-cliente\MIDI\*"; DestDir: "{app}\MIDI"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\ao-cliente\Screenshots\*"; DestDir: "{app}\Screenshoots"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\ao-cliente\WAV\*"; DestDir: "{app}\Wav"; Flags: ignoreversion recursesubdirs createallsubdirs

Source: "C:\ao-installer\Dlls\AAMD532.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\AOFX.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\AOLIB.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\GDI32.dll"; DestDir: "{sys}"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\DX7VB.DLL"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\IJL11.dll"; DestDir: "{app}\Dlls"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\LEEINIS.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\LEEMAPAS.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\OLEPRO32.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\VBABDX.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\WINMM.dll"; DestDir: "{sys}"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\WS2_32.dll"; DestDir: "{sys}"; Flags: regserver 32bit
Source: "C:\ao-installer\Dlls\ZLIB.OCX"; DestDir: "{app}\Dlls"; Flags: regserver 32bit

Source: "C:\ao-installer\Dlls\System32\COMCTL32.ocx"; DestDir: "{app}\Dlls"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\System32\COMDLG32.ocx"; DestDir: "{app}\Dlls"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\System32\CSWSK32.ocx"; DestDir: "{app}\Dlls"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\System32\DX7VB.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\System32\DX8VB.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\ao-installer\Dlls\System32\Unzip32.dll"; DestDir: "{app}"; Flags: regserver 32bit

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
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase aamd532.dll; WorkingDir: {app}\dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase ijl11.dll; WorkingDir: {app}\dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase vbdabl.dll; WorkingDir: {app}\dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase psapi.dll; WorkingDir: {app}\dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase Unzip32.dll; WorkingDir: {app}; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{app}\{#MyAppExeName}"; Verb: runas; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent shellexec


