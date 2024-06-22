@echo off

@REM https://docs.anaconda.com/miniconda/#quick-command-line-install
echo Downloading Miniconda3.exe for Python 3.10 64-bit
curl https://repo.anaconda.com/miniconda/Miniconda3-py310_23.11.0-2-Windows-x86_64.exe -o miniconda.exe

echo Hash must be: 
echo f242f98378691496851f78beaf466797fb20251ba5092840c794503594d37726
certutil -hashfile miniconda.exe SHA256

@REM https://docs.conda.io/projects/conda/en/latest/user-guide/install/windows.html#installing-in-silent-mode
@REM https://conda.github.io/constructor/cli-options/#windows-installers
@REM /InstallationType=[JustMe|AllUsers]: This flag sets the installation type. The default is JustMe. AllUsers might require elevated privileges.
@REM /AddToPath=[0|1]: Whether to add the installation directory to the PATH environment variable. The default is 0. This is NOT recommended.
@REM /CheckPathLength=[0|1]: Check whether the installation path is too long (>46 characters). The default depends on how the installer was created.
@REM /KeepPkgCache=[0|1]: Whether to keep the package cache or not. Defaults to 1.
@REM /NoRegistry=[0|1]: Whether to prevent registry modification or not. Defaults to 0.
@REM /NoScripts=[0|1]: If set to 1, the installer will not run any post-install scripts. Defaults to 0.
@REM /NoShortcuts=[0|1]: If set to 1, the installer will not create any shortcuts. Defaults to 0.
@REM /RegisterPython=[0|1]: Whether to register Python as default in the Windows registry. Defaults to 1. This is preferred to AddToPath.

echo Installing Miniconda3.exe for Python 3.10 64-bit to %cd%\Miniconda3
start /wait "" miniconda.exe ^
    /InstallationType=JustMe ^
    /RegisterPython=0 ^
    /NoRegistry=1 ^
    /NoShortcuts=1 ^
    /S ^
    /D=%cd%\Miniconda3
