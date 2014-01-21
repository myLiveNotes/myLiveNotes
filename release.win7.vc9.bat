echo off
REM --------------------------------------------------------------------
REM This program is free software: you can redistribute it and/or modify
REM it under the terms of the GNU General Public License as published by
REM the Free Software Foundation, either version 2 of the License, or
REM (at your option) any later version.
REM 
REM This program is distributed in the hope that it will be useful,
REM but WITHOUT ANY WARRANTY; without even the implied warranty of
REM MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
REM GNU General Public License for more details.
REM 
REM You should have received a copy of the GNU General Public License
REM along with this program.  If not, see <http://www.gnu.org/licenses/>.
REM ---------------------------------------------------------------------

REM set QT_DIR=..\Qt-4.8
set QT_DIR=C:\Qt\4.7.0
set QT_BIN=%QT_DIR%\bin

REM set PROGRAMS_FILE_PATH=C:\Program Files
set PROGRAMS_FILE_PATH=C:\Program Files (x86)

set SEVEN_ZIP_EXE="%PROGRAMS_FILE_PATH%\7-Zip\7z.exe"
set GIT_BIN=%PROGRAMS_FILE_PATH%\Git\bin
set VS_BIN=%PROGRAMS_FILE_PATH%\Microsoft Visual Studio 9.0\VC\bin
set WIN_SDK_BIN=%PROGRAMS_FILE_PATH%\Microsoft SDKs\Windows\v6.0A\Bin
set INNO_EXE=%PROGRAMS_FILE_PATH%\Inno Setup 5\iscc.exe 
set BUILD_DIR=build\win32\release
set LRELEASE=%QT_DIR%\bin\lrelease
set BASE_QT_TRANSLATIONS_DIRECTORY=%QT_DIR%\translations

set PATH=%QT_BIN%;%PATH%;%WIN_SDK_BIN%;%GIT_BIN%

call "%VS_BIN%\vcvars32.bat"

echo %PATH%

REM this checks if the custom qt directory path
REM is correct. This is important because installer
REM pick up dll from this directory
IF NOT EXIST "%QT_DIR%\lib\QtCore4.dll" GOTO EXIT_WITH_ERROR

rmdir /S /Q %BUILD_DIR%
rmdir /S /Q install

REM "%QT_BIN%\qmake.exe" Sankore_3.1.pro
"%QT_BIN%\qmake.exe" myLiveNotes.pro

REM %LRELEASE% Sankore_3.1.pro
%LRELEASE% myLiveNotes.pro
%LRELEASE% %BASE_QT_TRANSLATIONS_DIRECTORY%\translations.pro

set /p VERSION= < build\win32\release\version
REM remove the last character that is a space
set VERSION=%VERSION: =%
REM git rev-list --tags --max-count=1 > tmp
REM set /p LAST_TAG= < tmp
REM erase tmp
REM git describe %LAST_TAG% > tmp
REM set /p LAST_TAG_VERSION=< tmp
REM erase tmp

REM echo %VERSION%
REM echo %LAST_TAG_VERSION%

nmake release-install
REM IF NOT EXIST build\win32\release\product\Open-Sankore.exe GOTO EXIT_WITH_ERROR
IF NOT EXIST build\win32\release\product\myLiveNotes.exe GOTO EXIT_WITH_ERROR

xcopy C:\myLiveNotes\lib\*.dll build\win32\release\product\
xcopy %QT_DIR%\lib\QtOpenGL4.dll build\win32\release\product\

set CUSTOMIZATIONS=build\win32\release\product\customizations
mkdir %CUSTOMIZATIONS%
xcopy /s resources\customizations %CUSTOMIZATIONS%

set STARTUP_HINTS=build\win32\release\product\startupHints
mkdir %STARTUP_HINTS%
xcopy /s resources\startupHints %STARTUP_HINTS%

set I18n=build\win32\release\product\i18n
xcopy /s %BASE_QT_TRANSLATIONS_DIRECTORY%\qt_*.qm %I18n%\

del build\win32\release\product\i18n\qt_help*

REM del "build\win32\release\product\Sankore.pdb"
del "build\win32\release\product\myLiveNotes.pdb"

set INSTALLER_NAME=myLiveNotes

set INSTALLER_PATH=.\install\win32\%INSTALLER_NAME%.exe

REM call "%INNO_EXE%" "Sankore 3.1.iss" /F"%INSTALLER_NAME%"
call "%INNO_EXE%" "myLiveNotes.iss" /F"%INSTALLER_NAME%"

set INSTALL_DIRECTORY=install\win32\
xcopy *.pdf %INSTALL_DIRECTORY%
xcopy LICENSE.txt %INSTALL_DIRECTORY%
cd %INSTALL_DIRECTORY%
REM call %SEVEN_ZIP_EXE% a Open-Sankor�_Windows_%VERSION%.zip *.exe *.pdf *.txt
call %SEVEN_ZIP_EXE% a myLiveNotes�_Windows_%VERSION%.zip *.exe *.pdf *.txt
cd ..\..\
GOTO END

:EXIT_WITH_ERROR
echo "Error found"
GOTO :EOF

:END
echo "myLiveNotes build finished"

:EOF
