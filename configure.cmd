@echo off

:: Windows SDK Include directory. No quotation marks.
set SDK_INCLUDE_DIR=C:\Program Files (x86)\Windows Kits\8.1\Include

:: Visual Studio directory. Quotation marks.
set VS_DIR="C:\Program Files (x86)\Microsoft Visual Studio 14.0"

:: Target architecture, AMD64 (64-bit) or I386 (32-bit)
set CPU=AMD64

:: Toolchain, x86_amd64 (cross-compile 64-bit) or x86 (32-bit) or amd64 (64-bit)
set TOOLCHAIN=x86_amd64

:: TINY, SMALL, NORMAL, BIG or HUGE. NORMAL or above recommended
set FEATURES=BIG

:: yes for gvim, no for vim
set GUI=yes

:: Whatever IDE integrations we don't need
set NETBEANS=no

:: UTF-8 encoding
set MBYTE=yes

:: Enable Python scripting
set DYNAMIC_PYTHON=yes
set PYTHON=C:\Python27
set PYTHON_VER=27

echo "Configuring Visual Studio..."
call %VS_DIR%\VC\vcvarsall.bat %TOOLCHAIN%
