; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{E63D17F8-D9DA-479D-B9B5-0D101A03703B}
AppName=myLiveNotes
AppVerName=myLiveNotes
AppPublisher=myLiveNotes

; AppPublisherURL=http://dev.open-sankore.org
; AppSupportURL=http://dev.open-sankore.org
; AppUpdatesURL=http://dev.open-sankore.org
AppPublisherURL=http://dev.mylivenotes.com
AppSupportURL=http://dev.mylivenotes.com
AppUpdatesURL=http://dev.mylivenotes.com

DefaultDirName={pf}\myLiveNotes
DefaultGroupName=myLiveNotes

OutputDir=.\install\win32\
OutputBaseFilename=myLiveNotes
SetupIconFile=.\resources\win\uniboard.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "fr"; MessagesFile: "compiler:Languages\French.isl"
Name: "gr"; MessagesFile: "compiler:Languages\German.isl"
Name: "it"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "sp"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[InstallDelete]

Type: files ; Name: "{app}\myLiveNotes.pdb"
Type: filesandordirs ; Name: "{app}\library"
Type: filesandordirs ; Name: "{app}\Microsoft.VC90.CRT"
Type: filesandordirs ; Name: "{app}\plugins"
Type: filesandordirs ; Name: "{app}\i18n"
Type: files ; Name: "{app}\*.dll"

[Files]
; Source: "..\Sankore-ThirdParty\microsoft\vcredist_x86.exe"; DestDir:"{tmp}"
Source: "C:\Users\apark\Documents\GitHub\Sankore-ThirdParty\microsoft\vcredist_x86.exe"; DestDir:"{tmp}"
Source: "build\win32\release\product\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

;OpenSSL
; Source: "..\Sankore-ThirdParty\openssl\win32\libeay32.dll"; DestDir:"{app}"; Flags: ignoreversion
; Source: "..\Sankore-ThirdParty\openssl\win32\ssleay32.dll"; DestDir:"{app}"; Flags: ignoreversion
;Source: "C:\Uers\apark\Documents\GitHub\Sankore-ThirdParty\openssl\win32\libeay32.dll"; DestDir:"{app}"; Flags: ignoreversion
;Source: "C:\Users\apark\Documents\GitHub\Sankore-ThirdParty\openssl\win32\ssleay32.dll"; DestDir:"{app}"; Flags: ignoreversion
Source: "C:\OpenSSL-Win64\libeay32.dll"; DestDir:"{app}"; Flags: ignoreversion
Source: "C:\OpenSSL-Win64\ssleay32.dll"; DestDir:"{app}"; Flags: ignoreversion

;Qt base dll
Source: "C:\Qt\4.7.0\lib\QtScript4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\lib\QtGui4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\lib\QtXml4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\lib\QtCore4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\lib\QtWebKit4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\lib\phonon4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\lib\QtNetwork4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\lib\QtSvg4.dll"; DestDir: "{app}"; Flags: ignoreversion

;Qt plugins
Source: "C:\Qt\4.7.0\plugins\accessible\qtaccessiblecompatwidgets4.dll"; DestDir: "{app}\accessible"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\plugins\accessible\qtaccessiblewidgets4.dll"; DestDir: "{app}\accessible"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\plugins\bearer\qgenericbearer4.dll"; DestDir: "{app}\bearer"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\plugins\bearer\qnativewifibearer4.dll"; DestDir: "{app}\bearer"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\plugins\codecs\qcncodecs4.dll"; DestDir: "{app}\codecs"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\plugins\codecs\qjpcodecs4.dll"; DestDir: "{app}\codecs"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\plugins\codecs\qkrcodecs4.dll"; DestDir: "{app}\codecs"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\plugins\codecs\qtwcodecs4.dll"; DestDir: "{app}\codecs"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\plugins\graphicssystems\qglgraphicssystem4.dll"; DestDir: "{app}\graphicssystems"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\plugins\graphicssystems\qtracegraphicssystem4.dll"; DestDir: "{app}\graphicssystems"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\plugins\iconengines\qsvgicon4.dll"; DestDir: "{app}\iconengines"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\plugins\imageformats\qgif4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\plugins\imageformats\qico4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\plugins\imageformats\qjpeg4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\plugins\imageformats\qmng4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\plugins\imageformats\qsvg4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\plugins\imageformats\qtiff4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "C:\Qt\4.7.0\plugins\phonon_backend\phonon_ds94.dll"; DestDir: "{app}\phonon_backend"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

;qt multimedia plugins
; Source: "c:\OpenSankore\plugins\mediaservice\dsengine.dll"; DestDir: "c:\OpenSankore\plugins\mediaservice"; Flags: ignoreversion
; Source: "c:\OpenSankore\plugins\mediaservice\dsengined.dll"; DestDir: "c:\OpenSankore\plugins\mediaservice"; Flags: ignoreversion
; Source: "c:\OpenSankore\plugins\mediaservice\qtmedia_audioengine.dll"; DestDir: "c:\OpenSankore\plugins\mediaservice"; Flags: ignoreversion
; Source: "c:\OpenSankore\plugins\mediaservice\qtmedia_audioengined.dll"; DestDir: "c:\OpenSankore\plugins\mediaservice"; Flags: ignoreversion
; 
; Source: "c:\OpenSankore\plugins\playlistformats\qtmultimediakit_m3u.dll"; DestDir: "c:\OpenSankore\plugins\playlistformats"; Flags: ignoreversion
; Source: "c:\OpenSankore\plugins\playlistformats\qtmultimediakit_m3ud.dll"; DestDir: "c:\OpenSankore\plugins\playlistformats"; Flags: ignoreversion

;fonts for xpdf
Source: "resources\windows\xpdfrc"; DestDir: "{app}"; Flags: ignoreversion
Source: "resources\fonts\*"; DestDir: "{app}\fonts"; Flags: ignoreversion

[Icons]
Name: "{group}\myLiveNotes"; Filename: "{app}\myLiveNotes.exe"
Name: "{group}\{cm:UninstallProgram,myLiveNotes}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\myLiveNotes"; Filename: "{app}\myLiveNotes.exe"; Tasks: desktopicon

[Registry]
Root: HKCR; Subkey: ".ubz"; ValueType: string; ValueName: ""; ValueData: "myLiveNotesFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "myLiveNotesFile"; ValueType: string; ValueName: ""; ValueData: "myLiveNotes document"; Flags: uninsdeletekey
Root: HKCR; Subkey: "myLiveNotesFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\myLiveNotes.exe,1"
Root: HKCR; Subkey: "myLiveNotesFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\myLiveNotes.exe"" ""%1"""

Root: HKLM; Subkey: "SOFTWARE\myLiveNotes"; ValueType: string; ValueName: "Client application"; ValueData: "{app}\myLiveNotes.exe"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\myLiveNotes"; ValueType: dword; ValueName: "Transfer mode"; ValueData: "0"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\myLiveNotes"; ValueType: dword; ValueName: "EMF: Hide page"; ValueData: "1"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\myLiveNotes\Defaults"; ValueType: dword; ValueName: "PDF: Enabled"; ValueData: "1"; Flags: uninsdeletevalue; Check: isProcessorNotX64

Root: HKLM; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: dword; ValueName: "Policy"; ValueData: "3"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: string; ValueName: "AppName"; ValueData: "myLiveNotes.exe"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: string; ValueName: "AppPath"; ValueData: "{app}"; Flags: uninsdeletevalue; Check: isProcessorNotX64

Root: HKLM64; Subkey: "SOFTWARE\myLiveNotes"; ValueType: string; ValueName: "Client application"; ValueData: "{app}\myLiveNotes.exe"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\myLiveNotes"; ValueType: dword; ValueName: "Transfer mode"; ValueData: "0"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\myLiveNotes"; ValueType: dword; ValueName: "EMF: Hide page"; ValueData: "1"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\myLiveNotes\Defaults"; ValueType: dword; ValueName: "PDF: Enabled"; ValueData: "1"; Flags: uninsdeletevalue; Check: isProcessorX64

Root: HKLM64; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: dword; ValueName: "Policy"; ValueData: "3"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: string; ValueName: "AppName"; ValueData: "myLiveNotes.exe"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: string; ValueName: "AppPath"; ValueData: "{app}"; Flags: uninsdeletevalue; Check: isProcessorX64

[Run]
Filename: "{tmp}\vcredist_x86.exe";WorkingDir:"{tmp}"; Parameters: "/q:a/c:""VCREDI~3.EXE /q:a /c:""""msiexec /i vcredist.msi /qn"""""""; StatusMsg: Installing CRT ...
Filename: "{app}\myLiveNotes.exe"; Description: "{cm:LaunchProgram,myLiveNotes}"; Flags: nowait postinstall skipifsilent 

[UninstallDelete]
; cleanup and delete whole installation directory
Name: {app}; Type: filesandordirs

[Code]
function isProcessorX64: Boolean;
begin
  Result := (ProcessorArchitecture = paX64);
end;

function isProcessorNotX64: Boolean;
begin
	Result := not isProcessorX64;
end;

