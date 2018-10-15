;Lapsus 2017 installer by BysNacK

#define MyAppName "Lapsus 2017"
#define MyAppVersion "2017"
#define MyAppPublisher "Lapsus Corp"
#define MyAppURL "http://www.lapsus2017.com/"
#define MyAppExeName "Launcher.exe"

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
OutputBaseFilename=LapsusOficial
Compression=lzma
SolidCompression=yes
PrivilegesRequired=admin
SetupIconFile=C:\Users\Juan\Desktop\Lapsus2017\lapsusinstaller\favicon.ico

[Languages]
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Launcher.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Lapsus.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Graficos\*"; DestDir: "{app}\Graficos"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\INIT\*"; DestDir: "{app}\INIT"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\MAPAS\*"; DestDir: "{app}\MAPAS"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Midi\*"; DestDir: "{app}\MIDI"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Screenshoots\*"; DestDir: "{app}\Screenshoots"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Procesos\*"; DestDir: "{app}\Procesos"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Wav\*"; DestDir: "{app}\Wav"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Dlls\ccrpTmr6.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Dlls\COMCTL32.OCX"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Dlls\COMDLG32.OCX"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Dlls\cswsk32.ocx"; DestDir: "{sys}"; Flags: regserver 32bit
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Dlls\DX7VB.DLL"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Dlls\ijl11.dll"; DestDir: "{app}\Dlls"; Flags: ignoreversion
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Dlls\mfc42.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Dlls\Mscomctl.ocx"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Dlls\msinet.ocx"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Dlls\msstdfmt.dll"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Dlls\MSVBVM50.dll"; DestDir: "{sys}"; Flags: regserver 32bit
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Dlls\Msvbvm60.dll"; DestDir: "{sys}"; Flags: regserver 32bit
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Dlls\MSWINSCK.OCX"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Dlls\PSAPI.DLL"; DestDir: "{app}\Dlls"; Flags: ignoreversion
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Dlls\RICHTX32.OCX"; DestDir: "{app}\Dlls"; Flags: regserver 32bit
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\Dlls\vbDABL.dll"; DestDir: "{app}\Dlls"; Flags: ignoreversion
Source: "C:\Users\Juan\Desktop\Lapsus2017\Cliente\unrar.dll"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase aamd532.dll; WorkingDir: {app}\dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase ijl11.dll; WorkingDir: {app}\dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase vbdabl.dll; WorkingDir: {app}\dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase psapi.dll; WorkingDir: {app}\dlls; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{dotnet20}\RegAsm.exe"; Parameters: /codebase unrar.dll; WorkingDir: {app}; StatusMsg: "Registrando componentes..."; Flags: runminimized; Check: FrameworkIsInstalled
Filename: "{app}\{#MyAppExeName}"; Verb: runas; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent shellexec


