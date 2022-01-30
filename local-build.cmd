REM run as Administrator
@echo off
cd /d %~dp0
set DOWNLOAD_DIR=%USERPROFILE%\Downloads
set DOWNLOAD_DIR_LINUX=%DOWNLOAD_DIR:\=/%
SET PATH=%DOWNLOAD_DIR%\PortableGit\bin;%DOWNLOAD_DIR%\cmake-3.22.2-windows-x86_64\bin;

cmake -G "Visual Studio 16 2019" -A x64  -B./build

cd build
REM cmake --build . --target ALL_BUILD --config Release -- /nologo /verbosity:minimal /maxcpucount


pause